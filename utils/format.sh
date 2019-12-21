#!/bin/bash
set -e  # Exit on first failure

source utils/activate_miniconda
source utils/activate_environment
python -m black src submission
python -m isort src -rc
python -m isort submission -rc
