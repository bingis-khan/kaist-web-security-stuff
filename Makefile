
pdf: 1030/paper1_20236434.pdf 1101/paper2_20236434.pdf

1030/paper1_20236434.pdf: 1030/*.tex
	pdflatex -output-directory 1030 -jobname paper1_20236434 $<

1101/paper2_20236434.pdf: 1101/*.tex
	pdflatex -output-directory 1101 -jobname paper2_20236434 $<

