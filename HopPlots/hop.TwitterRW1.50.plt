#
# Hop Plot. Hop plot. EffDiam: 8.40114, G(26795, 153635) (Sun Apr 27 20:54:43 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 8.40114, G(26795, 153635)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.TwitterRW1.50.png'
plot 	"hop.TwitterRW1.50.tab" using 1:2 title "" with linespoints pt 6