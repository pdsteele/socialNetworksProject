#
# In-degree Distribution. G(78786, 1634509). 8899 (0.1130) nodes with in-deg > avg deg (41.5), 3721 (0.0472) with >2*avg.deg (Wed Apr 30 02:16:17 2014)
#

set title "In-degree Distribution. G(78786, 1634509). 8899 (0.1130) nodes with in-deg > avg deg (41.5), 3721 (0.0472) with >2*avg.deg"
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
set output 'inDeg.FRDG_TCL_2.png'
plot 	"inDeg.FRDG_TCL_2.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=235250.436117*x**-1.952657, f1(x) title "2e+05 * x^{-1.953}  R^2:0.93" with lines linewidth 3
