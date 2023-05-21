html:
	makeinfo --css-include=ansicl.css --html chap-0.texi

html-one-page:
	makeinfo --css-include=ansicl.css --html chap-0.texi --no-split

info:
	makeinfo chap-0.texi
