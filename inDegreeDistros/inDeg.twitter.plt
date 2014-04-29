#
# In-degree Distribution. G(81306, 1768149). 9565 (0.1176) nodes with in-deg > avg deg (43.5), 3535 (0.0435) with >2*avg.deg (Tue Apr 22 23:00:24 2014)
#

set title "In-degree Distribution. G(81306, 1768149). 9565 (0.1176) nodes with in-deg > avg deg (43.5), 3535 (0.0435) with >2*avg.deg"
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
set output 'inDeg.twitter.png'
plot 	"inDeg.twitter.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=408814.324208*x**-2.064102, f1(x) title "4e+05 * x^{-2.064}  R^2:0.94" with lines linewidth 3
