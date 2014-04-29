#
# Clustering Coefficient Distribution. G(80776, 1730617). Average clustering: 0.0045  OpenTriads: 164059935 (0.9991)  ClosedTriads: 154041 (0.0009) (Tue Apr 29 01:21:44 2014)
#

set title "Clustering Coefficient Distribution. G(80776, 1730617). Average clustering: 0.0045  OpenTriads: 164059935 (0.9991)  ClosedTriads: 154041 (0.0009)"
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
set output 'ccf.FRDG.png'
plot 	"ccf.FRDG.tab" using 1:2 title "" with linespoints pt 6
