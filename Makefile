.PHONY: all
all: clean dist 

.PHONY: dist
dist: main.html 
	mkdir dist && mv main.html dist/index.html && cp -r ./image ./dist

main.html:
	asciidoctor main.adoc

.PHONY: clean
clean:
	rm -f ./main.html && rm -rf dist