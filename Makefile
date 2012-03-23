# Makefile for ubiquity-slideshow-squibby

SOURCE=.
BUILD=$(SOURCE)/build
SOURCESLIDES=$(SOURCE)/slideshows

all: clean build_squibby translations

build_init:
	mkdir -p $(BUILD)

build_squibby: build_init
	cp -rL $(SOURCESLIDES)/squibby $(BUILD)

translations:
	./generate-local-slides.sh squibby

.PHONY : clean

clean:
	-rm -rf $(BUILD)
