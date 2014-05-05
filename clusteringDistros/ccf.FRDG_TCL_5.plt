#
# Clustering Coefficient Distribution. G(80374, 1730617). Average clustering: 0.0478  OpenTriads: 201126614 (0.9965)  ClosedTriads: 704400 (0.0035) (Mon May  5 02:51:35 2014)
#

set title "Clustering Coefficient Distribution. G(80374, 1730617). Average clustering: 0.0478  OpenTriads: 201126614 (0.9965)  ClosedTriads: 704400 (0.0035)"
set key bottom right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Node degree"
set ylabel "Average clustering coefficient"
set tics scale 2
set terminal png size 1000,800
set output 'ccf.FRDG_TCL_5.png'
plot 	"ccf.FRDG_TCL_5.tab" using 1:2 title "" with linespoints pt 6
