#
# In-degree Distribution. G(80583, 1730617). 10494 (0.1302) nodes with in-deg > avg deg (43.0), 3758 (0.0466) with >2*avg.deg (Sun May  4 20:26:08 2014)
#

set title "In-degree Distribution. G(80583, 1730617). 10494 (0.1302) nodes with in-deg > avg deg (43.0), 3758 (0.0466) with >2*avg.deg"
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
set output 'inDeg.FRDG_TCL_4.png'
plot 	"inDeg.FRDG_TCL_4.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=522293.558012*x**-2.119895, f1(x) title "5e+05 * x^{-2.12}  R^2:0.93" with lines linewidth 3
