#
# Out-degree Distribution. G(78415, 1619335). 12079 (0.1540) nodes with out-deg > avg deg (41.3), 3972 (0.0507) with >2*avg.deg (Sun May  4 14:17:54 2014)
#

set title "Out-degree Distribution. G(78415, 1619335). 12079 (0.1540) nodes with out-deg > avg deg (41.3), 3972 (0.0507) with >2*avg.deg"
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
set output 'outDeg.FRDG_TCL_3.png'
plot 	"outDeg.FRDG_TCL_3.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=564091.112037*x**-2.139334, f1(x) title "6e+05 * x^{-2.139}  R^2:0.89" with lines linewidth 3
