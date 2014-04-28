#
# Out-degree Distribution. G(26795, 153635). 3006 (0.1122) nodes with out-deg > avg deg (11.5), 1396 (0.0521) with >2*avg.deg (Sun Apr 27 20:54:43 2014)
#

set title "Out-degree Distribution. G(26795, 153635). 3006 (0.1122) nodes with out-deg > avg deg (11.5), 1396 (0.0521) with >2*avg.deg"
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
set output 'outDeg.TwitterRW1.50.png'
plot 	"outDeg.TwitterRW1.50.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=39460.158220*x**-2.084036, f1(x) title "4e+04 * x^{-2.084}  R^2:0.95" with lines linewidth 3
