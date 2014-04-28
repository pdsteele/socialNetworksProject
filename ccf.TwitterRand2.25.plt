#
# Clustering Coefficient Distribution. G(70948, 531003). Average clustering: 0.2076  OpenTriads: 31242935 (0.9537)  ClosedTriads: 1515503 (0.0463) (Sun Apr 27 20:18:03 2014)
#

set title "Clustering Coefficient Distribution. G(70948, 531003). Average clustering: 0.2076  OpenTriads: 31242935 (0.9537)  ClosedTriads: 1515503 (0.0463)"
set key bottom right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Node degree"
set ylabel "Average clustering coefficient"
set tics scale 2
set terminal png size 1000,800
set output 'ccf.TwitterRand2.25.png'
plot 	"ccf.TwitterRand2.25.tab" using 1:2 title "" with linespoints pt 6
