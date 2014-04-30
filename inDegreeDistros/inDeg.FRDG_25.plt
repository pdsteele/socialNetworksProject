#
# In-degree Distribution. G(75718, 525348). 9209 (0.1216) nodes with in-deg > avg deg (13.9), 3277 (0.0433) with >2*avg.deg (Wed Apr 30 17:12:35 2014)
#

set title "In-degree Distribution. G(75718, 525348). 9209 (0.1216) nodes with in-deg > avg deg (13.9), 3277 (0.0433) with >2*avg.deg"
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
set output 'inDeg.FRDG_25.png'
plot 	"inDeg.FRDG_25.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=264027.475348*x**-2.318784, f1(x) title "3e+05 * x^{-2.319}  R^2:0.94" with lines linewidth 3
