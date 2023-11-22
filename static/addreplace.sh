#! /bin/sh

cd docs
find pdf -type f | sort | awk '{ print "<li><a href=" $1 ">" $1 "</a></li>" }' > ../links
cd ..

cat static/index.html | sed '/PDFPATHS/{r links
d}' > docs/index.html
