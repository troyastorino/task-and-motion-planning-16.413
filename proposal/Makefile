all: proposal.pdf

proposal.pdf: proposal.tex
	pdflatex -halt-on-error proposal.tex
	# run twice to get section numbers and other cross-references right on the first try.
	pdflatex -halt-on-error proposal.tex

clean:
	rm *.pdf *.toc *.aux *.log
