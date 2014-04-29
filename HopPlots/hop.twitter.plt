#
# Hop Plot. Hop plot. EffDiam: 7.52224, G(81306, 1768149) (Tue Apr 22 23:00:28 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 7.52224, G(81306, 1768149)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.twitter.png'
plot 	"hop.twitter.tab" using 1:2 title "" with linespoints pt 6
