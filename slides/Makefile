all: slides.pdf

slides.pdf: *.tex
	pdflatex -halt-on-error slides.tex
	# run twice to get section numbers and other cross-references right on the first try.
	pdflatex -halt-on-error slides.tex

clean:
	rm -f *.pdf *.toc *.aux *.log *.nav *.out
