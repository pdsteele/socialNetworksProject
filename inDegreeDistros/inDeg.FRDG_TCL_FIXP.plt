#
# In-degree Distribution. G(80307, 1730617). 9193 (0.1145) nodes with in-deg > avg deg (43.1), 3418 (0.0426) with >2*avg.deg (Mon May  5 02:51:29 2014)
#

set title "In-degree Distribution. G(80307, 1730617). 9193 (0.1145) nodes with in-deg > avg deg (43.1), 3418 (0.0426) with >2*avg.deg"
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
set output 'inDeg.FRDG_TCL_FIXP.png'
plot 	"inDeg.FRDG_TCL_FIXP.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=290272.995249*x**-1.992136, f1(x) title "3e+05 * x^{-1.992}  R^2:0.93" with lines linewidth 3
