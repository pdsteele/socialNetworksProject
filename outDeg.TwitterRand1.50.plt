#
# Out-degree Distribution. G(77163, 981492). 10164 (0.1317) nodes with out-deg > avg deg (25.4), 3781 (0.0490) with >2*avg.deg (Sun Apr 27 20:00:03 2014)
#

set title "Out-degree Distribution. G(77163, 981492). 10164 (0.1317) nodes with out-deg > avg deg (25.4), 3781 (0.0490) with >2*avg.deg"
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
set output 'outDeg.TwitterRand1.50.png'
plot 	"outDeg.TwitterRand1.50.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=417389.617571*x**-2.210881, f1(x) title "4e+05 * x^{-2.211}  R^2:0.92" with lines linewidth 3
