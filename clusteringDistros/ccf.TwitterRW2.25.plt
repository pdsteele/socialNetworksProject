#
# Clustering Coefficient Distribution. G(13358, 50111). Average clustering: 0.1274  OpenTriads: 1255302 (0.9395)  ClosedTriads: 80847 (0.0605) (Sun Apr 27 20:55:21 2014)
#

set title "Clustering Coefficient Distribution. G(13358, 50111). Average clustering: 0.1274  OpenTriads: 1255302 (0.9395)  ClosedTriads: 80847 (0.0605)"
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
set output 'ccf.TwitterRW2.25.png'
plot 	"ccf.TwitterRW2.25.tab" using 1:2 title "" with linespoints pt 6
