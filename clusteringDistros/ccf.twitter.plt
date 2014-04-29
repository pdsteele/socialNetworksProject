#
# Clustering Coefficient Distribution. G(81306, 1768149). Average clustering: 0.5653  OpenTriads: 190845756 (0.9358)  ClosedTriads: 13082506 (0.0642) (Tue Apr 22 23:00:24 2014)
#

set title "Clustering Coefficient Distribution. G(81306, 1768149). Average clustering: 0.5653  OpenTriads: 190845756 (0.9358)  ClosedTriads: 13082506 (0.0642)"
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
set output 'ccf.twitter.png'
plot 	"ccf.twitter.tab" using 1:2 title "" with linespoints pt 6
