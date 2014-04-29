#
# In-degree Distribution. G(59, 59). 0 (0.0000) nodes with in-deg > avg deg (2.0), 0 (0.0000) with >2*avg.deg (Sun Apr 27 20:56:20 2014)
#

set title "In-degree Distribution. G(59, 59). 0 (0.0000) nodes with in-deg > avg deg (2.0), 0 (0.0000) with >2*avg.deg"
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
set output 'inDeg.TwitterTCL1.25.png'
plot 	"inDeg.TwitterTCL1.25.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=57.000000*x**-5.832890, f1(x) title "6e+01 * x^{-5.833}  R^2:1" with lines linewidth 3
