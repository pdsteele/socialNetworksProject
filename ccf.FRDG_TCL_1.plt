#
# Clustering Coefficient Distribution. G(78437, 1618665). Average clustering: 0.0569  OpenTriads: 217764217 (0.9967)  ClosedTriads: 720941 (0.0033) (Tue Apr 29 23:48:30 2014)
#

set title "Clustering Coefficient Distribution. G(78437, 1618665). Average clustering: 0.0569  OpenTriads: 217764217 (0.9967)  ClosedTriads: 720941 (0.0033)"
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
set output 'ccf.FRDG_TCL_1.png'
plot 	"ccf.FRDG_TCL_1.tab" using 1:2 title "" with linespoints pt 6
