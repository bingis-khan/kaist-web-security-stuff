#! /bin/sh

cd docs
find pdf -type f | awk '{ print "<a href=" $1 "></a>" }' > ../links
cd ..

cat static/index.html | sed '/PDFPATHS/{r links
d}' > docs/index.html
