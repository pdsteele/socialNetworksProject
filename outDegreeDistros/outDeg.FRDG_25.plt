#
# Out-degree Distribution. G(75718, 525348). 10785 (0.1424) nodes with out-deg > avg deg (13.9), 3575 (0.0472) with >2*avg.deg (Wed Apr 30 17:12:35 2014)
#

set title "Out-degree Distribution. G(75718, 525348). 10785 (0.1424) nodes with out-deg > avg deg (13.9), 3575 (0.0472) with >2*avg.deg"
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
set output 'outDeg.FRDG_25.png'
plot 	"outDeg.FRDG_25.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=496464.882253*x**-2.506359, f1(x) title "5e+05 * x^{-2.506}  R^2:0.92" with lines linewidth 3
