#
# In-degree Distribution. G(13358, 50111). 1339 (0.1002) nodes with in-deg > avg deg (7.5), 593 (0.0444) with >2*avg.deg (Sun Apr 27 20:55:21 2014)
#

set title "In-degree Distribution. G(13358, 50111). 1339 (0.1002) nodes with in-deg > avg deg (7.5), 593 (0.0444) with >2*avg.deg"
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
set output 'inDeg.TwitterRW2.25.png'
plot 	"inDeg.TwitterRW2.25.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=12613.872225*x**-2.085719, f1(x) title "1e+04 * x^{-2.086}  R^2:0.94" with lines linewidth 3
