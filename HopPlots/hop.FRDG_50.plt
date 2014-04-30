#
# Hop Plot. Hop plot. EffDiam: 6.50767, G(79227, 967895) (Wed Apr 30 15:40:12 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 6.50767, G(79227, 967895)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.FRDG_50.png'
plot 	"hop.FRDG_50.tab" using 1:2 title "" with linespoints pt 6
