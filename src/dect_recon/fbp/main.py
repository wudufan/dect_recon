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
    parser.add_argument('--subset', help='Choose from None (default), odd, even')
    parser.add_argument('--device', type=int, default=0)

    if 'ipykernel' in sys.argv[0]:
        args = parser.parse_args(debug_args)
        setattr(args, 'is_debug', True)
    else:
        args = parser.parse_args()
        setattr(args, 'is_debug', False)

    # validate
    if args.subset is not None and args.subset not in ['odd', 'even']:
        raise ValueError('args.subset must be one of: None, odd, even')

    for k in vars(args):
        print(k, '=', getattr(args, k), flush=True)

    return args


def save_img(filename: str, img: np.array, dx: float, dy: float, dz: float):
    sitk_img = sitk.GetImageFromArray(img.astype(np.int32))
    sitk_img.SetSpacing([float(dx), float(dy), float(dz)])

    sitk.WriteImage(sitk_img, filename)


def main(args):
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

    print('Reconstruct image A...', flush=True)
    ct_projector.set_device(args.device)
    img_a = ct_helical.fbp_long(
        projector_rebin_a,
        prjs_rebin_ab[[0]],
        angles_a[istart_a],
        zpos_a[istart_a],
        zrot_a
    )
    print('Done')

    print('Reconstruct image B...', flush=True)
    img_b = ct_helical.fbp_long(
        projector_rebin_b,
        prjs_rebin_ab[[1]],
        angles_b[istart_b],
        zpos_b[istart_b],
        zrot_b
    )
    print('Done')

    print('Save images...', flush=True)
    img_a = img_a[..., ::-1][0]
    img_b = img_b[..., ::-1][0]
    img_a = img_a * 1000 / 0.019 - 1000
    img_b = img_b * 1000 / 0.019 - 1000

    output_filename = os.path.join(src_data_dir, args.output)
    output_dir = os.path.dirname(output_filename)
    os.makedirs(output_dir, exist_ok=True)
    save_img(output_filename + '.A.nii', img_a, projector.dx, projector.dy, projector.dz)
    save_img(output_filename + '.B.nii', img_b, projector.dx, projector.dy, projector.dz)
    print('Done', flush=True)
    print('All Done')


# %%
if __name__ == '__main__':
    args = get_args([
        '--input', 'raw/54_1.mat',
        '--output', 'fbp/all/54_1',
        '--geometry', 'siemens_definition_flash.cfg'
    ])
    f = main(args)
