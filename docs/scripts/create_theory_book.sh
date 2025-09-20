#!/bin/bash
# Create the PDFs
#
# Usage:
#
# ./create_book_1.sh
#

build_folder=build

rm -rf build
mkdir build

if [ ! -d $build_folder ]; then 
  echo "Error: failed to create build folder"
  exit 1
fi

# Concatenate all markdown files, convert those to one PDF
#
# We are in the 'scripts' folder

cp ../steps/*.* $build_folder
cp ../steps/1_install_inkcut/*.* $build_folder
cp ../misc/foreword/*.* $build_folder
cp ../troubleshooting/*.* $build_folder

# Newline between TOC and foreword
echo " " > $build_folder/README.md # Start from scratch
echo "\pagebreak" >> $build_folder/README.md
echo " " >> $build_folder/README.md

cat ../misc/foreword/README.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md


cat ../steps/0_check.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/1_install_inkcut/README.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/2_setup_inkcut.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/3_get_t_shirts.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/4_get_vinyl.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/5_connect_vinyl_cutter.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/6_setup_vinyl_cutter.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/7_place_foil.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/8_setup_inkcut_connection.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/9_use_inkcut.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/10_setup_heat_press.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/11_peel_vinyl.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/12_transfer_vinyl_to_t_shirt.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../troubleshooting/README.md >> $build_folder/README.md

Rscript -e 'mkdocs2md::convert_file_to_markdown("build/README.md", "build/README.md", keep_tags = FALSE)'

cp guide_style.theme $build_folder

cd "${build_folder}" || exit 41

#
# We are in the 'scripts/build' folder
#

# Table of Content
# Code has highlights following the tango color scheme
# Thinner margin of 0.5 inch
# Do not cut code blocks
echo "Creating book without cover"
pandoc README.md -o theory_book_without_cover.pdf --toc --toc-depth=1 --highlight-style=guide_style.theme -V geometry:margin=0.5in

echo "Copying book without cover to PDFs folder"
cp theory_book_without_cover.pdf ../../pdfs/theory_book_without_cover.pdf

cd ../../pdfs || exit 42

echo "These are the PDFs in the 'pdfs' folder:"
ls

#
# We are in the 'pdfs' folder
#
pdfunite theory_cover.pdf theory_book_without_cover.pdf theory_book.pdf

# Make booklet
bookletimposer -a theory_book.pdf -o theory_booklet.pdf

# Cleanup
rm theory_book_without_cover.pdf
