# Colin McKinley
#Makefile for makequiz

.DEFAULT_GOAL := all

all: build doczip

mywc: build

build: wc.c
	gcc -o mywc wc.c

doc:
	doxygen -g
	doxygen Doxyfile

doczip:
	zip -r doczip.zip ./html
	doxygen Doxyfile

clean:
	rm -rf html latex
	rm a.out mywc
