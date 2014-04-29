#
# Out-degree Distribution. G(80776, 1730617). 11921 (0.1476) nodes with out-deg > avg deg (42.8), 3292 (0.0408) with >2*avg.deg (Tue Apr 29 01:21:44 2014)
#

set title "Out-degree Distribution. G(80776, 1730617). 11921 (0.1476) nodes with out-deg > avg deg (42.8), 3292 (0.0408) with >2*avg.deg"
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
set output 'outDeg.FRDG.png'
plot 	"outDeg.FRDG.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=614432.986144*x**-2.156636, f1(x) title "6e+05 * x^{-2.157}  R^2:0.88" with lines linewidth 3
