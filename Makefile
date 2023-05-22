.PHONY: all

all: info html

html:
	makeinfo --css-include=ansicl.css --html chap-0.texi

html-one-page:
	makeinfo --css-include=ansicl.css --html chap-0.texi --no-split -o ansicl-one-page.html

info:
	makeinfo chap-0.texi
