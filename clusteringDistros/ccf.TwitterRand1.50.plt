#
# Clustering Coefficient Distribution. G(77163, 981492). Average clustering: 0.3540  OpenTriads: 81463165 (0.9453)  ClosedTriads: 4709917 (0.0547) (Sun Apr 27 20:00:02 2014)
#

set title "Clustering Coefficient Distribution. G(77163, 981492). Average clustering: 0.3540  OpenTriads: 81463165 (0.9453)  ClosedTriads: 4709917 (0.0547)"
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
set output 'ccf.TwitterRand1.50.png'
plot 	"ccf.TwitterRand1.50.tab" using 1:2 title "" with linespoints pt 6
