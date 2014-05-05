#
# Clustering Coefficient Distribution. G(80155, 2145624). Average clustering: 0.0749  OpenTriads: 990539227 (0.9907)  ClosedTriads: 9256832 (0.0093) (Sun May  4 21:56:48 2014)
#

set title "Clustering Coefficient Distribution. G(80155, 2145624). Average clustering: 0.0749  OpenTriads: 990539227 (0.9907)  ClosedTriads: 9256832 (0.0093)"
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
set output 'ccf.TCL_1.png'
plot 	"ccf.TCL_1.tab" using 1:2 title "" with linespoints pt 6
