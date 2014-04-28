#
# Out-degree Distribution. G(13358, 50111). 1311 (0.0981) nodes with out-deg > avg deg (7.5), 612 (0.0458) with >2*avg.deg (Sun Apr 27 20:55:21 2014)
#

set title "Out-degree Distribution. G(13358, 50111). 1311 (0.0981) nodes with out-deg > avg deg (7.5), 612 (0.0458) with >2*avg.deg"
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
set output 'outDeg.TwitterRW2.25.png'
plot 	"outDeg.TwitterRW2.25.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=8477.632418*x**-1.934575, f1(x) title "8e+03 * x^{-1.935}  R^2:0.96" with lines linewidth 3
