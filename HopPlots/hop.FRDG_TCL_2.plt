#
# Hop Plot. Hop plot. EffDiam: 5.83541, G(78786, 1634509) (Wed Apr 30 02:16:20 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 5.83541, G(78786, 1634509)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.FRDG_TCL_2.png'
plot 	"hop.FRDG_TCL_2.tab" using 1:2 title "" with linespoints pt 6
