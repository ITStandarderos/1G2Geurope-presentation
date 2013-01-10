NAME = presentation_1g2gEurope

all: $(NAME).tex $(NAME).bib
	pdflatex $(NAME).tex
	bibtex $(NAME)
	pdflatex $(NAME).tex
	pdflatex $(NAME).tex
	make uncrab
	
.PHONY: clean
clean:
	rm *.aux
	rm *.log
	rm *.nav
	rm *.out
	rm *.snm
	rm *.toc
	rm $(NAME).pdf

.PHONY: uncrab
uncrab:
	rm *.aux
	rm *.log
	rm *.nav
	rm *.out
	rm *.snm
	rm *.toc
	rm *.bbl
	rm *.blg
