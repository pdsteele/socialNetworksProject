#
# In-degree Distribution. G(70948, 531003). 7921 (0.1116) nodes with in-deg > avg deg (15.0), 3136 (0.0442) with >2*avg.deg (Sun Apr 27 20:18:03 2014)
#

set title "In-degree Distribution. G(70948, 531003). 7921 (0.1116) nodes with in-deg > avg deg (15.0), 3136 (0.0442) with >2*avg.deg"
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
set output 'inDeg.TwitterRand2.25.png'
plot 	"inDeg.TwitterRand2.25.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=155720.562999*x**-2.149883, f1(x) title "2e+05 * x^{-2.15}  R^2:0.95" with lines linewidth 3
