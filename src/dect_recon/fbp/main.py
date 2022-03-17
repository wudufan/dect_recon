'''
FBP of the dect images, support odd or even angle reconstruction
'''

# %%
import h5py
import numpy as np
import argparse
import sys
import os
import SimpleITK as sitk

import ct_projector.projector.numpy as ct_projector
import ct_projector.projector.numpy.helical_equiangular_parallel_rebin as ct_helical

from dect_recon.locations import src_data_dir


# %%
def get_args(debug_args=[]) -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument('--input', help='input .mat filename relative to src_data_dir')
    parser.add_argument('--geometry', help='geometry file relative to src_data_dir')
    parser.add_argument(
        '--output',
        help='output filename relative to src_data_dir. The output files will be '
        'output.A.nii and output.B.nii'
    )
    parser.add_argument('--subset', default='all', help='Choose from all (default), odd, even')
    parser.add_argument('--device', type=int, default=0)

    if 'ipykernel' in sys.argv[0]:
        args = parser.parse_args(debug_args)
        setattr(args, 'is_debug', True)
    else:
        args = parser.parse_args()
        setattr(args, 'is_debug', False)

    # validate
    if args.subset not in ['all', 'odd', 'even']:
        raise ValueError('args.subset must be one of: all, odd, even')

    for k in vars(args):
        print(k, '=', getattr(args, k), flush=True)

    return args


def save_img(filename: str, img: np.array, dx: float, dy: float, dz: float):
    sitk_img = sitk.GetImageFromArray(img.astype(np.int32))
    sitk_img.SetSpacing([float(dx), float(dy), float(dz)])

    sitk.WriteImage(sitk_img, filename)


def rebin_and_pad(
    projector: ct_projector.ct_projector,
    prjs_a: np.array,
    prjs_b: np.array,
    angles_a: np.array,
    angles_b: np.array,
    zpos_a: np.array,
    zpos_b: np.array,
    view_valid_a: np.array,
    view_valid_b: np.array
):
    projector.nv = prjs_a.shape[1]

    print('Rebin detector A...', flush=True)
    projector.nu = prjs_a.shape[2]
    projector_rebin_a, prjs_rebin_a, angles_a, zrot_a, nview_margin_pre_a, nview_margin_post_a = \
        ct_helical.rebin_helical_to_parallel(projector, prjs_a, angles_a, zpos_a)
    print('Done', flush=True)

    print('Rebin detector B...', flush=True)
    projector.nu = prjs_b.shape[2]
    projector_rebin_b, prjs_rebin_b, angles_b, zrot_b, nview_margin_pre_b, nview_margin_post_b = \
        ct_helical.rebin_helical_to_parallel(projector, prjs_b, angles_b, zpos_b)
    print('Done', flush=True)

    istart_origin_a = np.where(view_valid_a > 0.5)[0][0]
    istart_origin_b = np.where(view_valid_b > 0.5)[0][0]
    first_angle_offset = istart_origin_b - istart_origin_a

    print('Pad detector B...', flush=True)
    prjs_rebin_ab, istart_a, istart_b = ct_helical.pad_dual_source_ct_rebinned_projection(
        projector_rebin_a,
        projector_rebin_b,
        prjs_rebin_a,
        prjs_rebin_b,
        angles_a,
        angles_b,
        zrot_a,
        zrot_b,
        first_angle_offset,
        nview_margin_pre_a,
        nview_margin_pre_b,
        nview_margin_post_a,
        nview_margin_post_b,
    )
    print('Done', flush=True)

    return (
        projector_rebin_a,
        projector_rebin_b,
        prjs_rebin_ab,
        zrot_a,
        zrot_b,
        istart_a,
        istart_b,
    )


def reconstruction(
    projector_rebin_a: ct_projector.ct_projector,
    projector_rebin_b: ct_projector.ct_projector,
    prjs_rebin_ab: np.array,
    angles_a: np.array,
    angles_b: np.array,
    zpos_a: np.array,
    zpos_b: np.array,
    istart_a: int,
    istart_b: int,
    zrot_a: float,
    zrot_b: float,
    recon_z_start: float,
    recon_z_end: float
):
    print('Reconstruct image A...', flush=True)
    img_a = ct_helical.fbp_long(
        projector_rebin_a,
        prjs_rebin_ab[[0]],
        angles_a[istart_a],
        zpos_a[istart_a],
        zrot_a,
        recon_z_start=recon_z_start,
        recon_z_end=recon_z_end
    )
    print('Done')

    print('Reconstruct image B...', flush=True)
    img_b = ct_helical.fbp_long(
        projector_rebin_b,
        prjs_rebin_ab[[1]],
        angles_b[istart_b],
        zpos_b[istart_b],
        zrot_b,
        recon_z_start=recon_z_start,
        recon_z_end=recon_z_end
    )
    print('Done')

    return img_a, img_b


def is_first_view_even(view_valid):
    ind_first_view = np.where(view_valid > 0.5)[0][0]
    return ind_first_view % 2 == 0


def get_sample_offset(view_valid, subset):
    if subset == 'even':
        if is_first_view_even(view_valid):
            return 0
        else:
            return 1
    elif subset == 'odd':
        if is_first_view_even(view_valid):
            return 1
        else:
            return 0
    else:
        raise ValueError(f'subset must be even or odd, got {subset}')


def sample_even_or_odd_set(
    prjs_a: np.array,
    prjs_b: np.array,
    angles_a: np.array,
    angles_b: np.array,
    zpos_a: np.array,
    zpos_b: np.array,
    view_valid_a: np.array,
    view_valid_b: np.array,
    subset: str
):
    if subset == 'even':
        print('Sample even set...', flush=True)
        view_offset = 0
    elif subset == 'odd':
        print('Sample odd set...', flush=True)
        view_offset = 1

    offset_a = get_sample_offset(view_valid_a, subset)
    offset_b = get_sample_offset(view_valid_b, subset)

    return (
        prjs_a[offset_a::2],
        prjs_b[offset_b::2],
        angles_a[offset_a::2],
        angles_b[offset_b::2],
        zpos_a[offset_a::2],
        zpos_b[offset_b::2],
        view_valid_a[view_offset::2],
        view_valid_b[view_offset::2]
    )


def main(args):
    ct_projector.set_device(args.device)

    projector = ct_projector.ct_projector()
    projector.from_file(os.path.join(src_data_dir, args.geometry))

    print('Reading data...', flush=True)
    with h5py.File(os.path.join(src_data_dir, args.input), 'r') as f:
        # if a view is valid
        view_valid_a = np.copy(f['sh']['Lookup']['DetA']).flatten()
        view_valid_b = np.copy(f['sh']['Lookup']['DetB']).flatten()

        # z position of the source for each view, convert to mm
        zpos_a = np.copy(f['posA']).flatten() / 1000
        zpos_b = np.copy(f['posB']).flatten() / 1000

        # angle of the source for each view, convert to radius
        angles_a = np.copy(f['angleA']).flatten() / 180 * np.pi
        angles_b = np.copy(f['angleB']).flatten() / 180 * np.pi

        # projection, convert to attenuation
        prjs_a = np.copy(np.copy(f['projA'])[:, ::-1, :], 'C').astype(np.float32) / 2294.5
        prjs_b = np.copy(np.copy(f['projB'])[:, ::-1, :], 'C').astype(np.float32) / 2294.5
    print('done', flush=True)

    projector_rebin_a, projector_rebin_b, prjs_rebin_ab, zrot_a, zrot_b, istart_a, istart_b = \
        rebin_and_pad(projector, prjs_a, prjs_b, angles_a, angles_b, zpos_a, zpos_b, view_valid_a, view_valid_b)
    recon_z_margin = zrot_a / 4
    recon_z_start = zpos_a[istart_a] + recon_z_margin
    recon_z_end = zpos_a[istart_a] + zrot_a * prjs_rebin_ab.shape[1] / projector_rebin_a.rotview - recon_z_margin

    if args.subset in ['even', 'odd']:
        prjs_a, prjs_b, angles_a, angles_b, zpos_a, zpos_b, view_valid_a, view_valid_b = \
            sample_even_or_odd_set(
                prjs_a, prjs_b, angles_a, angles_b, zpos_a, zpos_b, view_valid_a, view_valid_b, args.subset
            )
        projector.rotview = projector.rotview / 2
        projector_rebin_a, projector_rebin_b, prjs_rebin_ab, zrot_a, zrot_b, istart_a, istart_b = \
            rebin_and_pad(projector, prjs_a, prjs_b, angles_a, angles_b, zpos_a, zpos_b, view_valid_a, view_valid_b)

    img_a, img_b = reconstruction(
        projector_rebin_a,
        projector_rebin_b,
        prjs_rebin_ab,
        angles_a,
        angles_b,
        zpos_a,
        zpos_b,
        istart_a,
        istart_b,
        zrot_a,
        zrot_b,
        recon_z_start,
        recon_z_end
    )

    print('Save images...', flush=True)
    img_a = img_a[..., ::-1][0]
    img_b = img_b[..., ::-1][0]
    img_a = img_a * 1000 / 0.019 - 1000
    img_b = img_b * 1000 / 0.019 - 1000

    output_filename = os.path.join(src_data_dir, args.output)
    output_dir = os.path.dirname(output_filename)
    os.makedirs(output_dir, exist_ok=True)
    save_img('.'.join([output_filename, args.subset, 'A.nii']), img_a, projector.dx, projector.dy, projector.dz)
    save_img('.'.join([output_filename, args.subset, 'B.nii']), img_b, projector.dx, projector.dy, projector.dz)
    print('Done', flush=True)
    print('All Done')

    return img_a, img_b


# %%
if __name__ == '__main__':
    args = get_args([
        '--input', 'raw/54_1.mat',
        '--output', 'fbp/54_1',
        '--subset', 'odd',
        '--geometry', 'siemens_definition_flash.cfg'
    ])
    img_a, img_b = main(args)
