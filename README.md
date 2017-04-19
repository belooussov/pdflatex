# belooussov/pdflatex

Fedora-based pdflatex image to compile all tex files into pdf.

## Usage

First, create a latex file you would like to compile, with extention `tex`.
Second, run the docker container by passing the current
subdirectory into the container:

``
docker run -ti -v `pwd`:/workspace belooussov/pdflatex:latest
``

The container will build all `tex` files present in the current subdirectory.

## Building specific files

First, create a latex file you would like to compile.
Second, run the docker container by mounting the current
subdirectory into the container, and specifying which
file you would like to compile into a pdf, for example my_tex_file.foo:

``
docker run -ti -v `pwd`:/workspace belooussov/pdflatex:latest my_tex_file.foo
``

Note that the pdf file `my_tex_file.pdf` will be silently overwritten.
