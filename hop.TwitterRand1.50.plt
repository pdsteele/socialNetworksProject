#
# Hop Plot. Hop plot. EffDiam: 7.63893, G(77163, 981492) (Sun Apr 27 20:00:06 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 7.63893, G(77163, 981492)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.TwitterRand1.50.png'
plot 	"hop.TwitterRand1.50.tab" using 1:2 title "" with linespoints pt 6
