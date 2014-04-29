#
# Hop Plot. Hop plot. EffDiam: 5.90887, G(80776, 1730617) (Tue Apr 29 01:21:47 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 5.90887, G(80776, 1730617)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.FRDG.png'
plot 	"hop.FRDG.tab" using 1:2 title "" with linespoints pt 6
