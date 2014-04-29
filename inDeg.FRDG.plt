#
# In-degree Distribution. G(80776, 1730617). 10730 (0.1328) nodes with in-deg > avg deg (42.8), 3464 (0.0429) with >2*avg.deg (Tue Apr 29 01:21:44 2014)
#

set title "In-degree Distribution. G(80776, 1730617). 10730 (0.1328) nodes with in-deg > avg deg (42.8), 3464 (0.0429) with >2*avg.deg"
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
set output 'inDeg.FRDG.png'
plot 	"inDeg.FRDG.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=613064.365531*x**-2.167464, f1(x) title "6e+05 * x^{-2.167}  R^2:0.92" with lines linewidth 3
