#
# Hop Plot. Hop plot. EffDiam: 6.74175, G(78437, 1618665) (Tue Apr 29 23:48:33 2014)
#

set title "Hop Plot. Hop plot. EffDiam: 6.74175, G(78437, 1618665)"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of pairs of nodes"
set tics scale 2
set terminal png size 1000,800
set output 'hop.FRDG_TCL_1.png'
plot 	"hop.FRDG_TCL_1.tab" using 1:2 title "" with linespoints pt 6
