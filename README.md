# sima-build
Dockerfiles for SIMA build environments.

Linux versions are built in Docker images, Windows versions are built by Appveyor, and Travis.ci builds OS X distributions.

To build and release SIMA:
--------------------------

1. Update version numbers in SIMA, commit/push/tag.
  * setup.py, main package init, docs
2. Build docker images if needed.
  * docker build -t sima-build-py27 -f Dockerfile.py27 .
3. Run each image and the included build script.
  * docker run -it sima-build-py27 bash
  * ./build\_script.sh
4. Upload each file (only need to upload 1 source distribution).
  * twine upload dist/sima\_x.y.z.*
5. Grab Appveyor artifacts from most recent build and upload manually.
6. Grab Travis.ci OSX builds from Amazon bucket and upload manually.
7. Build newwest docs in one of the docker images and upload to the website.
  * cd docs; make html
8. Update verion numbers in SIMA to be a dev verions again, commit/push.
