#
# Out-degree Distribution. G(79227, 967895). 10886 (0.1374) nodes with out-deg > avg deg (24.4), 3280 (0.0414) with >2*avg.deg (Wed Apr 30 15:40:10 2014)
#

set title "Out-degree Distribution. G(79227, 967895). 10886 (0.1374) nodes with out-deg > avg deg (24.4), 3280 (0.0414) with >2*avg.deg"
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
set output 'outDeg.FRDG_50.png'
plot 	"outDeg.FRDG_50.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=588921.541405*x**-2.329244, f1(x) title "6e+05 * x^{-2.329}  R^2:0.91" with lines linewidth 3
