#
# Hop Plot. Hop plot. EffDiam: 4.9386, G(80307, 1730617) (Mon May  5 02:51:32 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 4.9386, G(80307, 1730617)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.FRDG_TCL_FIXP.png'
plot 	"hop.FRDG_TCL_FIXP.tab" using 1:2 title "" with linespoints pt 6