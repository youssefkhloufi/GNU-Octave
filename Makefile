doc = document

$(doc).pdf: $(doc).tex
	pdflatex $(doc) 

bib:
	pdflatex $(doc)
	bibtex $(doc)
	pdflatex $(doc)
	pdflatex $(doc)

clean:
	rm *.pdf *.aux *.log *.toc *.bbl *.blg *.out

