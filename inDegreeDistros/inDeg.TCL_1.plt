#
# In-degree Distribution. G(80155, 2145624). 9223 (0.1151) nodes with in-deg > avg deg (53.5), 3771 (0.0470) with >2*avg.deg (Sun May  4 21:56:48 2014)
#

set title "In-degree Distribution. G(80155, 2145624). 9223 (0.1151) nodes with in-deg > avg deg (53.5), 3771 (0.0470) with >2*avg.deg"
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
set output 'inDeg.TCL_1.png'
plot 	"inDeg.TCL_1.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=276680.346164*x**-1.927289, f1(x) title "3e+05 * x^{-1.927}  R^2:0.93" with lines linewidth 3
