#! /bin/sh

ls | grep -E '[0-9]+' | while read -r FOLDER; do
  TEXFILE=$(echo $FOLDER/*.tex)
  mkdir -p docs/pdf/$FOLDER
  pdflatex -jobname "docs/pdf/$FOLDER/$(basename $TEXFILE .tex)_20236434" $TEXFILE
done

rm docs/pdf/*/*.log
rm docs/pdf/*/*.aux