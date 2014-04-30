#
# In-degree Distribution. G(78437, 1618665). 8788 (0.1120) nodes with in-deg > avg deg (41.3), 3658 (0.0466) with >2*avg.deg (Tue Apr 29 23:48:30 2014)
#

set title "In-degree Distribution. G(78437, 1618665). 8788 (0.1120) nodes with in-deg > avg deg (41.3), 3658 (0.0466) with >2*avg.deg"
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
set output 'inDeg.FRDG_TCL_1.png'
plot 	"inDeg.FRDG_TCL_1.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=217655.841602*x**-1.934869, f1(x) title "2e+05 * x^{-1.935}  R^2:0.93" with lines linewidth 3
