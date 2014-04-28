#
# Clustering Coefficient Distribution. G(59, 59). Average clustering: 0.0000  OpenTriads: 60 (1.0000)  ClosedTriads: 0 (0.0000) (Sun Apr 27 20:56:19 2014)
#

set title "Clustering Coefficient Distribution. G(59, 59). Average clustering: 0.0000  OpenTriads: 60 (1.0000)  ClosedTriads: 0 (0.0000)"
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
set output 'ccf.TwitterTCL1.25.png'
plot 	"ccf.TwitterTCL1.25.tab" using 1:2 title "" with linespoints pt 6
