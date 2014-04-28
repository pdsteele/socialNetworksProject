#
# Out-degree Distribution. G(16307, 61319). 1543 (0.0946) nodes with out-deg > avg deg (7.5), 656 (0.0402) with >2*avg.deg (Sun Apr 27 20:56:18 2014)
#

set title "Out-degree Distribution. G(16307, 61319). 1543 (0.0946) nodes with out-deg > avg deg (7.5), 656 (0.0402) with >2*avg.deg"
set key bottom right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Out-degree"
set ylabel "Count"
set tics scale 2
set yrange[1.000000:]
set terminal png size 1000,800
set output 'outDeg.TwitterRW2.50.png'
plot 	"outDeg.TwitterRW2.50.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=10343.407290*x**-1.970979, f1(x) title "1e+04 * x^{-1.971}  R^2:0.94" with lines linewidth 3
