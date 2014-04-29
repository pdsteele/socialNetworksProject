#
# In-degree Distribution. G(26795, 153635). 2835 (0.1058) nodes with in-deg > avg deg (11.5), 1247 (0.0465) with >2*avg.deg (Sun Apr 27 20:54:42 2014)
#

set title "In-degree Distribution. G(26795, 153635). 2835 (0.1058) nodes with in-deg > avg deg (11.5), 1247 (0.0465) with >2*avg.deg"
set key bottom right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "In-degree"
set ylabel "Count"
set tics scale 2
set yrange[1.000000:]
set terminal png size 1000,800
set output 'inDeg.TwitterRW1.50.png'
plot 	"inDeg.TwitterRW1.50.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=44414.749105*x**-2.136741, f1(x) title "4e+04 * x^{-2.137}  R^2:0.95" with lines linewidth 3
