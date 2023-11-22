#! /bin/sh

cd docs
find pdf -type f | sort | awk -F'[/.]' '{ print "<li><a href=" $0 ">" $2 "</a></li>" }' > ../links
cd ..

cat static/index.html | sed '/PDFPATHS/{r links
d}' > docs/index.html
