#!/bin/bash
set -e

pushd /app/stable-diffusion-webui

# override required for non-official supported AMD gpus
#HSA_OVERRIDE_GFX_VERSION=10.3.0 python3 launch.py --precision full --no-half --skip-torch-cuda-test

# no override necessary for NVIDIA gpus
python3 launch.py --precision full --no-half

popd