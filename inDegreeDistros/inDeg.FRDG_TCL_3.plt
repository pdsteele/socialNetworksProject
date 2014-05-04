#
# In-degree Distribution. G(78415, 1619335). 8807 (0.1123) nodes with in-deg > avg deg (41.3), 3642 (0.0464) with >2*avg.deg (Sun May  4 14:17:54 2014)
#

set title "In-degree Distribution. G(78415, 1619335). 8807 (0.1123) nodes with in-deg > avg deg (41.3), 3642 (0.0464) with >2*avg.deg"
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
set output 'inDeg.FRDG_TCL_3.png'
plot 	"inDeg.FRDG_TCL_3.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=235737.921136*x**-1.956493, f1(x) title "2e+05 * x^{-1.956}  R^2:0.93" with lines linewidth 3
