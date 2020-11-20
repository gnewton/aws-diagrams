all: database images

images: database
	gs -dBATCH -dNOPAUSE -dQUIET -dSAFER -sDEVICE=jpeg -dTextAlphaBits=4 -dGraphicsAlphaBits=4 -dDOINTERPOLATE -dCOLORSCREEN -r500 -o azure_database.png azure_database.pdf

database:
	pdflatex azure_database

.PHONY: clean
clean:
	-rm -f *.aux
	-rm -f *.log
	-rm -f *.toc
	-rm -f *.bbl
	-rm -f *.blg
	-rm -f *.out
	-rm -f make/bib

.PHONY: cleanall
cleanall: clean
	-rm -f *.pdf
	-rm -f *.jpg
	-rm -f *.ps
	-rm -f *.dvi
	-rm -rf ./make

make/%.t: %.tex
	touch $@

%.pdf: %.tex 
