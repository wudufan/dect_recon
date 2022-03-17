'''
Generate sh script
'''

# %%
import glob
import os
import copy

from dect_recon.locations import src_data_dir
from dect_recon.utils import multi_thread_script

# %%
filenames = glob.glob(os.path.join(src_data_dir, 'raw/*.mat'))
output_dir = 'fbp'

subsets = ['all', 'odd', 'even']

devices = ['1', '2', '3']
nprocesses = len(devices)

# %%
cmd_default = {
    '--geometry': 'siemens_definition_flash.cfg',
}
cmds = []
for filename in filenames:
    input_name = os.path.relpath(filename, src_data_dir)
    output_name = os.path.join(output_dir, os.path.basename(filename)[:-4])
    for subset in subsets:
        cmd = copy.deepcopy(cmd_default)
        cmd['--input'] = input_name
        cmd['--output'] = output_name
        cmd['--subset'] = subset
        cmd['--device'] = devices[len(cmds) % len(devices)]
        cmds.append(cmd)

# %%
multi_thread_script(
    'fbp.sh',
    'main.py',
    'logs/fbp',
    cmds,
    nprocesses,
    output_dir=os.path.join(src_data_dir, output_dir)
)
