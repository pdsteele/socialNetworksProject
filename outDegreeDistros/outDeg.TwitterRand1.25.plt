#
# Out-degree Distribution. G(70931, 531032). 9182 (0.1294) nodes with out-deg > avg deg (15.0), 3416 (0.0482) with >2*avg.deg (Sun Apr 27 19:27:54 2014)
#

set title "Out-degree Distribution. G(70931, 531032). 9182 (0.1294) nodes with out-deg > avg deg (15.0), 3416 (0.0482) with >2*avg.deg"
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
set output 'outDeg.TwitterRand1.25.png'
plot 	"outDeg.TwitterRand1.25.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=262288.603259*x**-2.284546, f1(x) title "3e+05 * x^{-2.285}  R^2:0.94" with lines linewidth 3
