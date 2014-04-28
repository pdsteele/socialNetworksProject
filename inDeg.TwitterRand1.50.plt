#
# In-degree Distribution. G(77163, 981492). 8653 (0.1121) nodes with in-deg > avg deg (25.4), 3429 (0.0444) with >2*avg.deg (Sun Apr 27 20:00:03 2014)
#

set title "In-degree Distribution. G(77163, 981492). 8653 (0.1121) nodes with in-deg > avg deg (25.4), 3429 (0.0444) with >2*avg.deg"
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
set output 'inDeg.TwitterRand1.50.png'
plot 	"inDeg.TwitterRand1.50.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=242411.663402*x**-2.087844, f1(x) title "2e+05 * x^{-2.088}  R^2:0.95" with lines linewidth 3
