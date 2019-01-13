BASE=filip_zyzniewski
OUT=$(BASE).pdf

.PHONY: clean view

all: $(OUT)

%.pdf: %.tex
	pdflatex $< 
	pdflatex $< 

filip_zyzniewski.pdf: pii.tex

view: $(OUT)
	xpdf $(OUT)

clean:
	rm $(OUT) $(BASE).aux pii.aux $(BASE).log $(BASE).out
