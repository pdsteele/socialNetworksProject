#
# Out-degree Distribution. G(81306, 1768149). 11418 (0.1404) nodes with out-deg > avg deg (43.5), 3910 (0.0481) with >2*avg.deg (Tue Apr 22 23:00:25 2014)
#

set title "Out-degree Distribution. G(81306, 1768149). 11418 (0.1404) nodes with out-deg > avg deg (43.5), 3910 (0.0481) with >2*avg.deg"
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
set output 'outDeg.twitter.png'
plot 	"outDeg.twitter.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=553610.536975*x**-2.113093, f1(x) title "6e+05 * x^{-2.113}  R^2:0.91" with lines linewidth 3
