#
# Clustering Coefficient Distribution. G(80583, 1730617). Average clustering: 0.0374  OpenTriads: 186413958 (0.9973)  ClosedTriads: 500989 (0.0027) (Sun May  4 20:26:07 2014)
#

set title "Clustering Coefficient Distribution. G(80583, 1730617). Average clustering: 0.0374  OpenTriads: 186413958 (0.9973)  ClosedTriads: 500989 (0.0027)"
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
set output 'ccf.FRDG_TCL_4.png'
plot 	"ccf.FRDG_TCL_4.tab" using 1:2 title "" with linespoints pt 6
