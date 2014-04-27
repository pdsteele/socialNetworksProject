#
# Clustering Coefficient Distribution. G(78665, 2362970). Average clustering: 0.0578  OpenTriads: 1276352004 (0.9873)  ClosedTriads: 16467712 (0.0127) (Sun Apr 27 15:07:28 2014)
#

set title "Clustering Coefficient Distribution. G(78665, 2362970). Average clustering: 0.0578  OpenTriads: 1276352004 (0.9873)  ClosedTriads: 16467712 (0.0127)"
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
set output 'ccf.TCL.png'
plot 	"ccf.TCL.tab" using 1:2 title "" with linespoints pt 6
