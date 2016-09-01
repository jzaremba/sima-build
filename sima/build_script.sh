#!/bin/bash

cd /code
git clone https://github.com/losonczylab/sima.git

cd sima

python setup.py bdist_wheel

rm -rf build
python setup.py sdist --format=zip

rm -rf build
python setup.py sdist
