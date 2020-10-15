all: database general

images: all
	gs -dBATCH -dNOPAUSE -dQUIET -dSAFER -sDEVICE=jpeg -dTextAlphaBits=4 -dGraphicsAlphaBits=4 -dDOINTERPOLATE -dCOLORSCREEN -r500 -o aws_database.png aws_database.pdf
	gs -dBATCH -dNOPAUSE -dQUIET -dSAFER -sDEVICE=jpeg -dTextAlphaBits=4 -dGraphicsAlphaBits=4 -dDOINTERPOLATE -dCOLORSCREEN -r500 -o aws_general.png aws_general.pdf 	

database:
	pdflatex aws_database

general:
	pdflatex aws_general

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
	-rm -f *.ps
	-rm -f *.dvi
	-rm -rf ./make

make/%.t: %.tex
	touch $@

%.pdf: %.tex 
