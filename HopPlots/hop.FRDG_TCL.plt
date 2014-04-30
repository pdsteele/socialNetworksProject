#
# Hop Plot. Hop plot. EffDiam: 4.89995, G(79090, 1699181) (Tue Apr 29 16:38:14 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 4.89995, G(79090, 1699181)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.FRDG_TCL.png'
plot 	"hop.FRDG_TCL.tab" using 1:2 title "" with linespoints pt 6
