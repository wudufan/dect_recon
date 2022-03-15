'''
FBP of the dect images, support odd or even angle reconstruction
'''

# %%
import h5py
import numpy as np
import argparse
import sys
import os

from dect_recon.locations import src_data_dir


