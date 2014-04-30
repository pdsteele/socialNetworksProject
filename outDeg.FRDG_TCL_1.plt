#
# Out-degree Distribution. G(78437, 1618665). 12045 (0.1536) nodes with out-deg > avg deg (41.3), 4006 (0.0511) with >2*avg.deg (Tue Apr 29 23:48:30 2014)
#

set title "Out-degree Distribution. G(78437, 1618665). 12045 (0.1536) nodes with out-deg > avg deg (41.3), 4006 (0.0511) with >2*avg.deg"
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
set output 'outDeg.FRDG_TCL_1.png'
plot 	"outDeg.FRDG_TCL_1.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=641270.799512*x**-2.174980, f1(x) title "6e+05 * x^{-2.175}  R^2:0.89" with lines linewidth 3
