all: README.pdf

README.pdf: README.tex
	pdflatex README

README.tex: README.md
	pandoc -s -o README.tex README.md

clean:
	rm -f *.tex *.pdf *.log *.out *.aux
