#
# Out-degree Distribution. G(80307, 1730617). 7577 (0.0944) nodes with out-deg > avg deg (43.1), 3199 (0.0398) with >2*avg.deg (Mon May  5 02:51:29 2014)
#

set title "Out-degree Distribution. G(80307, 1730617). 7577 (0.0944) nodes with out-deg > avg deg (43.1), 3199 (0.0398) with >2*avg.deg"
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
set output 'outDeg.FRDG_TCL_FIXP.png'
plot 	"outDeg.FRDG_TCL_FIXP.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=227383.832627*x**-1.954125, f1(x) title "2e+05 * x^{-1.954}  R^2:0.94" with lines linewidth 3
