#
# Out-degree Distribution. G(80374, 1730617). 11308 (0.1407) nodes with out-deg > avg deg (43.1), 3076 (0.0383) with >2*avg.deg (Mon May  5 02:51:35 2014)
#

set title "Out-degree Distribution. G(80374, 1730617). 11308 (0.1407) nodes with out-deg > avg deg (43.1), 3076 (0.0383) with >2*avg.deg"
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
set output 'outDeg.FRDG_TCL_5.png'
plot 	"outDeg.FRDG_TCL_5.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=670878.727880*x**-2.179124, f1(x) title "7e+05 * x^{-2.179}  R^2:0.89" with lines linewidth 3
