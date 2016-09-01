#!/bin/bash

cd /code
git clone https://github.com/losonczylab/roibuddy.git

cd roibuddy

python setup.py bdist_wheel

rm -rf build
python setup.py sdist --format=zip

rm -rf build
python setup.py sdist
