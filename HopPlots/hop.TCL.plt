#
# Hop Plot. Hop plot. EffDiam: 4.68264, G(78665, 2362970) (Sun Apr 27 15:07:31 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 4.68264, G(78665, 2362970)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.TCL.png'
plot 	"hop.TCL.tab" using 1:2 title "" with linespoints pt 6
