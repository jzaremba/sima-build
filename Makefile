
.PHONY: sima roibuddy all clean

all: clean sima roibuddy

sima:
	./sima_build_script.sh
	cd /code/sima && python setup.py install

roibuddy:
	./roibuddy_build_script.sh
	cd /code/roibuddy && python setup.py install

clean:
	rm -rf /code/sima
	rm -rf /code/roibuddy
