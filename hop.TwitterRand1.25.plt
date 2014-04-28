#
# Hop Plot. Hop plot. EffDiam: 8.7078, G(70931, 531032) (Sun Apr 27 19:27:56 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 8.7078, G(70931, 531032)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.TwitterRand1.25.png'
plot 	"hop.TwitterRand1.25.tab" using 1:2 title "" with linespoints pt 6
