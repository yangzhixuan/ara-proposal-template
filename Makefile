.PHONY: all clean

all: out out/ARA.pdf 

# $@ : name of the target
out/%.pdf : *.tex *.bib
	latexmk -pdf -outdir=out -pdflatex="pdflatex --shell-escape" $(basename $(notdir $@))

out:
	mkdir -p out

clean:
	rm -rf out
