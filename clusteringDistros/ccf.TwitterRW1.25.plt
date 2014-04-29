#
# Clustering Coefficient Distribution. G(14845, 115974). Average clustering: 0.2115  OpenTriads: 10484424 (0.9298)  ClosedTriads: 791233 (0.0702) (Sun Apr 27 20:51:39 2014)
#

set title "Clustering Coefficient Distribution. G(14845, 115974). Average clustering: 0.2115  OpenTriads: 10484424 (0.9298)  ClosedTriads: 791233 (0.0702)"
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
set output 'ccf.TwitterRW1.25.png'
plot 	"ccf.TwitterRW1.25.tab" using 1:2 title "" with linespoints pt 6
