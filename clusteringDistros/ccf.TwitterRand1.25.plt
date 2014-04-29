#
# Clustering Coefficient Distribution. G(70931, 531032). Average clustering: 0.2078  OpenTriads: 31355847 (0.9541)  ClosedTriads: 1509113 (0.0459) (Sun Apr 27 19:27:54 2014)
#

set title "Clustering Coefficient Distribution. G(70931, 531032). Average clustering: 0.2078  OpenTriads: 31355847 (0.9541)  ClosedTriads: 1509113 (0.0459)"
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
set output 'ccf.TwitterRand1.25.png'
plot 	"ccf.TwitterRand1.25.tab" using 1:2 title "" with linespoints pt 6
