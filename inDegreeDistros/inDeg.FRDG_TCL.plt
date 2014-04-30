#
# In-degree Distribution. G(79090, 1699181). 9091 (0.1149) nodes with in-deg > avg deg (43.0), 3725 (0.0471) with >2*avg.deg (Tue Apr 29 16:38:11 2014)
#

set title "In-degree Distribution. G(79090, 1699181). 9091 (0.1149) nodes with in-deg > avg deg (43.0), 3725 (0.0471) with >2*avg.deg"
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
set output 'inDeg.FRDG_TCL.png'
plot 	"inDeg.FRDG_TCL.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=241924.231058*x**-1.947669, f1(x) title "2e+05 * x^{-1.948}  R^2:0.94" with lines linewidth 3
