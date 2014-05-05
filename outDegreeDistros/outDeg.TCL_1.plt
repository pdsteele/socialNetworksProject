#
# Out-degree Distribution. G(80155, 2145624). 7854 (0.0980) nodes with out-deg > avg deg (53.5), 3380 (0.0422) with >2*avg.deg (Sun May  4 21:56:48 2014)
#

set title "Out-degree Distribution. G(80155, 2145624). 7854 (0.0980) nodes with out-deg > avg deg (53.5), 3380 (0.0422) with >2*avg.deg"
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
set output 'outDeg.TCL_1.png'
plot 	"outDeg.TCL_1.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=222509.318998*x**-1.900148, f1(x) title "2e+05 * x^{-1.9}  R^2:0.94" with lines linewidth 3
