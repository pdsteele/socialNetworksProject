#
# Hop Plot. Hop plot. EffDiam: 6.38666, G(80583, 1730617) (Sun May  4 21:56:07 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 6.38666, G(80583, 1730617)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.FRDG_TCL_4.png'
plot 	"hop.FRDG_TCL_4.tab" using 1:2 title "" with linespoints pt 6
