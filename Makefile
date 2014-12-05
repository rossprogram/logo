all: logo.pdf logo.svg logo.png

clean:
	rm -f logo.pdf
	rm -f logo.svg
	rm -f logo.png

logo.pdf: logo.tex
	pdflatex logo.tex
	pdflatex logo.tex

logo.svg: logo.pdf
	pdf2svg logo.pdf logo.svg

logo.png: logo.pdf
	mudraw -r100 -o logo.png -c rgba logo.pdf  
