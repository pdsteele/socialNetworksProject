#
# Clustering Coefficient Distribution. G(80307, 1730617). Average clustering: 0.0405  OpenTriads: 544672961 (0.9926)  ClosedTriads: 4033718 (0.0074) (Mon May  5 02:51:29 2014)
#

set title "Clustering Coefficient Distribution. G(80307, 1730617). Average clustering: 0.0405  OpenTriads: 544672961 (0.9926)  ClosedTriads: 4033718 (0.0074)"
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
set output 'ccf.FRDG_TCL_FIXP.png'
plot 	"ccf.FRDG_TCL_FIXP.tab" using 1:2 title "" with linespoints pt 6
