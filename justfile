main_file := "main.tex"
pdf_file := "main.pdf"

default:
    just --list

build:
    latexmk -pdf {{main_file}}

pdf: build

clean:
    latexmk -c {{main_file}}

distclean:
    latexmk -C {{main_file}}
