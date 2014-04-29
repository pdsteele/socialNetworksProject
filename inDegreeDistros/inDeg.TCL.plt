#
# In-degree Distribution. G(78665, 2362970). 8566 (0.1089) nodes with in-deg > avg deg (60.1), 3625 (0.0461) with >2*avg.deg (Sun Apr 27 15:07:28 2014)
#

set title "In-degree Distribution. G(78665, 2362970). 8566 (0.1089) nodes with in-deg > avg deg (60.1), 3625 (0.0461) with >2*avg.deg"
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
set output 'inDeg.TCL.png'
plot 	"inDeg.TCL.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=271100.881855*x**-1.908615, f1(x) title "3e+05 * x^{-1.909}  R^2:0.93" with lines linewidth 3
