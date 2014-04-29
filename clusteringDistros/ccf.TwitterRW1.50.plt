#
# Clustering Coefficient Distribution. G(26795, 153635). Average clustering: 0.1949  OpenTriads: 7372955 (0.9624)  ClosedTriads: 288119 (0.0376) (Sun Apr 27 20:54:42 2014)
#

set title "Clustering Coefficient Distribution. G(26795, 153635). Average clustering: 0.1949  OpenTriads: 7372955 (0.9624)  ClosedTriads: 288119 (0.0376)"
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
set output 'ccf.TwitterRW1.50.png'
plot 	"ccf.TwitterRW1.50.tab" using 1:2 title "" with linespoints pt 6
