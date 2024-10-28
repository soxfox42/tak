#!/bin/bash
python3 --version | tr -d '\n'
echo -n ", Numba "
pip show numba | grep Version:
