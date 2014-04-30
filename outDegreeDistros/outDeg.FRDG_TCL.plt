#
# Out-degree Distribution. G(79090, 1699181). 7736 (0.0978) nodes with out-deg > avg deg (43.0), 2763 (0.0349) with >2*avg.deg (Tue Apr 29 16:38:11 2014)
#

set title "Out-degree Distribution. G(79090, 1699181). 7736 (0.0978) nodes with out-deg > avg deg (43.0), 2763 (0.0349) with >2*avg.deg"
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
set output 'outDeg.FRDG_TCL.png'
plot 	"outDeg.FRDG_TCL.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=305781.738282*x**-2.031065, f1(x) title "3e+05 * x^{-2.031}  R^2:0.93" with lines linewidth 3
