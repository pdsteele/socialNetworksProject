#
# In-degree Distribution. G(79227, 967895). 9304 (0.1174) nodes with in-deg > avg deg (24.4), 3168 (0.0400) with >2*avg.deg (Wed Apr 30 15:40:09 2014)
#

set title "In-degree Distribution. G(79227, 967895). 9304 (0.1174) nodes with in-deg > avg deg (24.4), 3168 (0.0400) with >2*avg.deg"
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
set output 'inDeg.FRDG_50.png'
plot 	"inDeg.FRDG_50.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=385471.947088*x**-2.224683, f1(x) title "4e+05 * x^{-2.225}  R^2:0.94" with lines linewidth 3
