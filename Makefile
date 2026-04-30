# Default option creates the pdf and removes all texlive "junk".

.PHONY: clean remove-pdf purge default redo trigger-pdf-redo

IMAGE_FILES := $(shell find images -type f 2>/dev/null)
MISC_FILES := $(shell find misc -type f 2>/dev/null)
FIGURE_SVG_FILES := $(shell find figures -type f -name '*.svg' 2>/dev/null)
FIGURE_TEX_FILES := $(shell find figures -type f -name '*.tex' 2>/dev/null)
FIGURE_PDF_TEX_FILES := $(FIGURE_SVG_FILES:.svg=.pdf_tex)

default: thesis.pdf
# default: thesis.pdf clean

redo: trigger-pdf-redo thesis.pdf clean

%.pdf_tex: %.svg
	inkscape $< --export-type=pdf --export-latex

thesis.pdf: thesis.tex chapters/*.tex $(IMAGE_FILES) $(MISC_FILES) $(FIGURE_PDF_TEX_FILES) $(FIGURE_TEX_FILES)
	pdflatex thesis.tex
	biber thesis
	pdflatex thesis.tex

clean:
	rm -f thesis.aux thesis.bbl thesis.bcf thesis.blg thesis.log thesis.out \
	thesis.run.xml thesis.toc chapters/*.aux pdfa.xmpi

remove-pdf:
	rm thesis.pdf

trigger-pdf-redo:
	touch thesis.tex

purge: remove-pdf clean
