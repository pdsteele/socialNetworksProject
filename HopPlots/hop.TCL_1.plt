#
# Hop Plot. Hop plot. EffDiam: 4.8395, G(80155, 2145624) (Sun May  4 21:56:51 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 4.8395, G(80155, 2145624)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.TCL_1.png'
plot 	"hop.TCL_1.tab" using 1:2 title "" with linespoints pt 6
