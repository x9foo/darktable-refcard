# (c) 2015 Mark Richters
# This work is licensed under a Creative Commons Attribution 4.0 International License.

PDFLATEX = pdflatex

TEX_FILES := $(wildcard darktable-*.tex)
PDF_FILES := $(TEX_FILES:.tex=.pdf) 
LANG_FILES := $(wildcard lang-*.tex)

redirect = > /dev/null

all: $(PDF_FILES)

$(PDF_FILES): $(TEX_FILES) main.tex $(LANG_FILES)

%.pdf: %.tex
	$(PDFLATEX) $< $(redirect)
	$(PDFLATEX) $< $(redirect)

clean:
	rm -f *.pdf *.dvi *.lof *.lot *.aux *.bbl *.blg *.log *.out *.toc *.brf *.idx *.ind *.ilg core *~

maintainer-clean: clean
	rm -f $(TEX_FILES)
