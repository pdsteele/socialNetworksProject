#
# Out-degree Distribution. G(78786, 1634509). 11703 (0.1485) nodes with out-deg > avg deg (41.5), 3605 (0.0458) with >2*avg.deg (Wed Apr 30 02:16:17 2014)
#

set title "Out-degree Distribution. G(78786, 1634509). 11703 (0.1485) nodes with out-deg > avg deg (41.5), 3605 (0.0458) with >2*avg.deg"
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
set output 'outDeg.FRDG_TCL_2.png'
plot 	"outDeg.FRDG_TCL_2.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=751711.781399*x**-2.219491, f1(x) title "8e+05 * x^{-2.219}  R^2:0.88" with lines linewidth 3
