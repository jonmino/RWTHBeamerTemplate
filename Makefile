all: build/rwth-beamer.pdf

texoptions = \
	     --lualatex \
	     --interaction=nonstopmode \
	     --halt-on-error \
	     --output-directory=build

build/rwth-beamer.pdf: FORCE | build
	latexmk $(texoptions) rwth-beamer.tex

preview: FORCE | build
	latexmk $(texoptions) -pvc rwth-beamer.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build
