#
# Out-degree Distribution. G(14845, 115974). 1360 (0.0916) nodes with out-deg > avg deg (15.6), 760 (0.0512) with >2*avg.deg (Sun Apr 27 20:51:39 2014)
#

set title "Out-degree Distribution. G(14845, 115974). 1360 (0.0916) nodes with out-deg > avg deg (15.6), 760 (0.0512) with >2*avg.deg"
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
set output 'outDeg.TwitterRW1.25.png'
plot 	"outDeg.TwitterRW1.25.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=5510.681661*x**-1.613803, f1(x) title "6e+03 * x^{-1.614}  R^2:0.92" with lines linewidth 3
