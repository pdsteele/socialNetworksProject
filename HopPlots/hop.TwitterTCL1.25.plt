#
# Hop Plot. Hop plot. EffDiam: 40.7843, G(59, 59) (Sun Apr 27 20:56:20 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 40.7843, G(59, 59)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.TwitterTCL1.25.png'
plot 	"hop.TwitterTCL1.25.tab" using 1:2 title "" with linespoints pt 6
