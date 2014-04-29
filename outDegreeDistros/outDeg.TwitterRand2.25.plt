#
# Out-degree Distribution. G(70948, 531003). 9227 (0.1301) nodes with out-deg > avg deg (15.0), 3435 (0.0484) with >2*avg.deg (Sun Apr 27 20:18:03 2014)
#

set title "Out-degree Distribution. G(70948, 531003). 9227 (0.1301) nodes with out-deg > avg deg (15.0), 3435 (0.0484) with >2*avg.deg"
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
set output 'outDeg.TwitterRand2.25.png'
plot 	"outDeg.TwitterRand2.25.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=254860.190764*x**-2.273934, f1(x) title "3e+05 * x^{-2.274}  R^2:0.94" with lines linewidth 3
