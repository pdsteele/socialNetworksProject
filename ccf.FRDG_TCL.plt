#
# Clustering Coefficient Distribution. G(79090, 1699181). Average clustering: 0.0600  OpenTriads: 499902929 (0.9924)  ClosedTriads: 3811120 (0.0076) (Tue Apr 29 16:38:11 2014)
#

set title "Clustering Coefficient Distribution. G(79090, 1699181). Average clustering: 0.0600  OpenTriads: 499902929 (0.9924)  ClosedTriads: 3811120 (0.0076)"
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
set output 'ccf.FRDG_TCL.png'
plot 	"ccf.FRDG_TCL.tab" using 1:2 title "" with linespoints pt 6
