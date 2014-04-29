#
# Out-degree Distribution. G(78665, 2362970). 7625 (0.0969) nodes with out-deg > avg deg (60.1), 3406 (0.0433) with >2*avg.deg (Sun Apr 27 15:07:28 2014)
#

set title "Out-degree Distribution. G(78665, 2362970). 7625 (0.0969) nodes with out-deg > avg deg (60.1), 3406 (0.0433) with >2*avg.deg"
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
set output 'outDeg.TCL.png'
plot 	"outDeg.TCL.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=186710.221549*x**-1.840687, f1(x) title "2e+05 * x^{-1.841}  R^2:0.94" with lines linewidth 3
