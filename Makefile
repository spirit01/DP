filename=sci-pdflatex

all: pdf

pdf:
	pdflatex ${filename}.tex
	biber ${filename}.bcf
	pdflatex ${filename}.tex
	pdflatex ${filename}.tex
	

read: pdf
	evince ${filename}.pdf &

once:
	pdflatex ${filename}.tex
