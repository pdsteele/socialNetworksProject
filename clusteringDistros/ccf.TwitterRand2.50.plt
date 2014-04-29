#
# Clustering Coefficient Distribution. G(77072, 981410). Average clustering: 0.3545  OpenTriads: 81237623 (0.9452)  ClosedTriads: 4711836 (0.0548) (Sun Apr 27 20:50:32 2014)
#

set title "Clustering Coefficient Distribution. G(77072, 981410). Average clustering: 0.3545  OpenTriads: 81237623 (0.9452)  ClosedTriads: 4711836 (0.0548)"
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
set output 'ccf.TwitterRand2.50.png'
plot 	"ccf.TwitterRand2.50.tab" using 1:2 title "" with linespoints pt 6
