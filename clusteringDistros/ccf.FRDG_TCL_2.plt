#
# Clustering Coefficient Distribution. G(78786, 1634509). Average clustering: 0.0588  OpenTriads: 239543023 (0.9964)  ClosedTriads: 865616 (0.0036) (Wed Apr 30 02:16:17 2014)
#

set title "Clustering Coefficient Distribution. G(78786, 1634509). Average clustering: 0.0588  OpenTriads: 239543023 (0.9964)  ClosedTriads: 865616 (0.0036)"
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
set output 'ccf.FRDG_TCL_2.png'
plot 	"ccf.FRDG_TCL_2.tab" using 1:2 title "" with linespoints pt 6
