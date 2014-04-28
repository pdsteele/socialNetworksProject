#
# In-degree Distribution. G(77072, 981410). 8643 (0.1121) nodes with in-deg > avg deg (25.5), 3455 (0.0448) with >2*avg.deg (Sun Apr 27 20:50:32 2014)
#

set title "In-degree Distribution. G(77072, 981410). 8643 (0.1121) nodes with in-deg > avg deg (25.5), 3455 (0.0448) with >2*avg.deg"
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
set output 'inDeg.TwitterRand2.50.png'
plot 	"inDeg.TwitterRand2.50.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=260601.106752*x**-2.104880, f1(x) title "3e+05 * x^{-2.105}  R^2:0.95" with lines linewidth 3
