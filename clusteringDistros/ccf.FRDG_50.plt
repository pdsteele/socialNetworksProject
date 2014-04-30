#
# Clustering Coefficient Distribution. G(79227, 967895). Average clustering: 0.0025  OpenTriads: 63441573 (0.9994)  ClosedTriads: 37190 (0.0006) (Wed Apr 30 15:40:09 2014)
#

set title "Clustering Coefficient Distribution. G(79227, 967895). Average clustering: 0.0025  OpenTriads: 63441573 (0.9994)  ClosedTriads: 37190 (0.0006)"
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
set output 'ccf.FRDG_50.png'
plot 	"ccf.FRDG_50.tab" using 1:2 title "" with linespoints pt 6
