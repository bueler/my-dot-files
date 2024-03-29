#!/bin/bash

# requires:
#   pdftoppm
#   convert

# A script to rebuild problematic and un-printable PDFs as 300dpi
# images, then back to a PDF:
#    ./printmagick.sh in.pdf out.pdf

echo "generating PNG images $1-*.png ..."
pdftoppm $1 $1 -png -r 300
echo "converting PNG images to temporary MNG ..."
convert $1-*.png tmp-out.mng
echo "converting MNG to multipage PDF $2 ..."
convert tmp-out.mng $2