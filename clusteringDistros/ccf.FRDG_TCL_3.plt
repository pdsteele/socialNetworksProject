#
# Clustering Coefficient Distribution. G(78415, 1619335). Average clustering: 0.0568  OpenTriads: 218526266 (0.9967)  ClosedTriads: 722326 (0.0033) (Sun May  4 14:17:54 2014)
#

set title "Clustering Coefficient Distribution. G(78415, 1619335). Average clustering: 0.0568  OpenTriads: 218526266 (0.9967)  ClosedTriads: 722326 (0.0033)"
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
set output 'ccf.FRDG_TCL_3.png'
plot 	"ccf.FRDG_TCL_3.tab" using 1:2 title "" with linespoints pt 6
