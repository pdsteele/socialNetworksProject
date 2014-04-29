#
# Hop Plot. Hop plot. EffDiam: 9.43964, G(16307, 61319) (Sun Apr 27 20:56:19 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 9.43964, G(16307, 61319)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.TwitterRW2.50.png'
plot 	"hop.TwitterRW2.50.tab" using 1:2 title "" with linespoints pt 6
