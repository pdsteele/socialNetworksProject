#
# In-degree Distribution. G(80374, 1730617). 10249 (0.1275) nodes with in-deg > avg deg (43.1), 4002 (0.0498) with >2*avg.deg (Mon May  5 02:51:35 2014)
#

set title "In-degree Distribution. G(80374, 1730617). 10249 (0.1275) nodes with in-deg > avg deg (43.1), 4002 (0.0498) with >2*avg.deg"
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
set output 'inDeg.FRDG_TCL_5.png'
plot 	"inDeg.FRDG_TCL_5.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=471771.179602*x**-2.089342, f1(x) title "5e+05 * x^{-2.089}  R^2:0.92" with lines linewidth 3
