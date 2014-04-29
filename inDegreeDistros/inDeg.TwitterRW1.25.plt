#
# In-degree Distribution. G(14845, 115974). 1293 (0.0871) nodes with in-deg > avg deg (15.6), 700 (0.0472) with >2*avg.deg (Sun Apr 27 20:51:39 2014)
#

set title "In-degree Distribution. G(14845, 115974). 1293 (0.0871) nodes with in-deg > avg deg (15.6), 700 (0.0472) with >2*avg.deg"
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
set output 'inDeg.TwitterRW1.25.png'
plot 	"inDeg.TwitterRW1.25.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=8785.004401*x**-1.763127, f1(x) title "9e+03 * x^{-1.763}  R^2:0.94" with lines linewidth 3
