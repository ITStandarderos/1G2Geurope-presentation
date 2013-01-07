NAME = presentation_1g2gEurope

all: $(NAME).tex $(NAME).bib
	pdflatex $(NAME).tex
	bibtex $(NAME)
	pdflatex $(NAME).tex
	pdflatex $(NAME).tex
	make uncrab
	
.PHONY: clean
clean:
	rm $(NAME).aux
	rm $(NAME).log
	rm $(NAME).nav
	rm $(NAME).out
	rm $(NAME).snm
	rm $(NAME).toc
	rm $(NAME).pdf

.PHONY: uncrab
uncrab:
	rm $(NAME).aux
	rm $(NAME).log
	rm $(NAME).nav
	rm $(NAME).out
	rm $(NAME).snm
	rm $(NAME).toc
	rm $(NAME).bbl
	rm $(NAME).blg
	
.PHONY: uncrab-nobib
uncrab-nobib:
	rm $(NAME).aux
	rm $(NAME).log
	rm $(NAME).nav
	rm $(NAME).out
	rm $(NAME).snm
	rm $(NAME).toc

.PHONY: nobib
nobib: $(NAME).tex
	pdflatex $(NAME).tex
	make uncrab-nobib
