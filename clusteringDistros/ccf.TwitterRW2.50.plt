#
# Clustering Coefficient Distribution. G(16307, 61319). Average clustering: 0.1373  OpenTriads: 1871201 (0.9406)  ClosedTriads: 118110 (0.0594) (Sun Apr 27 20:56:18 2014)
#

set title "Clustering Coefficient Distribution. G(16307, 61319). Average clustering: 0.1373  OpenTriads: 1871201 (0.9406)  ClosedTriads: 118110 (0.0594)"
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
set output 'ccf.TwitterRW2.50.png'
plot 	"ccf.TwitterRW2.50.tab" using 1:2 title "" with linespoints pt 6
