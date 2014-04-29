#
# Out-degree Distribution. G(59, 59). 0 (0.0000) nodes with out-deg > avg deg (2.0), 0 (0.0000) with >2*avg.deg (Sun Apr 27 20:56:20 2014)
#

set title "Out-degree Distribution. G(59, 59). 0 (0.0000) nodes with out-deg > avg deg (2.0), 0 (0.0000) with >2*avg.deg"
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
set yrange[59.000000:]
set terminal png size 1000,800
set output 'outDeg.TwitterTCL1.25.png'
plot 	"outDeg.TwitterTCL1.25.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=1.000000*x**0.000000, f1(x) title "1 * x^{0}  R^2:-nan" with lines linewidth 3
