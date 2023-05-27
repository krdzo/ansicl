.PHONY: all

all: info html

html:
	makeinfo --css-include=ansicl.css --html -o ansicl_html chap-0.texi

html-with-highlights:
	makeinfo --html --css-include=themes/github.css -o ansicl_html chap-0.texi \
	-c 'EXTRA_HEAD=<script type="text/javascript" src="./js/highlight-lisp.js" defer></script> <script type="text/javascript" src="./js/scripts.js" defer></script>'
	cp -r js/ ansicl_html/

html-one-page:
	makeinfo --css-include=ansicl.css --html chap-0.texi --no-split -o ansicl-one-page.html

info:
	makeinfo chap-0.texi
