#
# Clustering Coefficient Distribution. G(75718, 525348). Average clustering: 0.0016  OpenTriads: 22837986 (0.9996)  ClosedTriads: 8774 (0.0004) (Wed Apr 30 17:12:35 2014)
#

set title "Clustering Coefficient Distribution. G(75718, 525348). Average clustering: 0.0016  OpenTriads: 22837986 (0.9996)  ClosedTriads: 8774 (0.0004)"
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
set output 'ccf.FRDG_25.png'
plot 	"ccf.FRDG_25.tab" using 1:2 title "" with linespoints pt 6
