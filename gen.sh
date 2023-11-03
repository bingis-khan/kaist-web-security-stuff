#! /bin/sh

ls | grep -E '[0-9]+' | while read -r FOLDER; do
  cd $FOLDER
  TEXFILE=$(echo *.tex)
  pdflatex -jobname "$(basename $TEXFILE .tex)_20236434" $TEXFILE
  cd ..
done