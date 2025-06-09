#!/bin/bash
cd ../sections
pandoc flight_electronics.md -o ../build/wing.pdf --pdf-engine=xelatex


# Use docker....


# conda install -c conda-forge texlive
# conda install pandoc