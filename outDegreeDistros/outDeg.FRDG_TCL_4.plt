#
<<<<<<< HEAD
# Out-degree Distribution. G(80583, 1730617). 11784 (0.1462) nodes with out-deg > avg deg (43.0), 3170 (0.0393) with >2*avg.deg (Sun May  4 21:56:03 2014)
=======
# Out-degree Distribution. G(80583, 1730617). 11784 (0.1462) nodes with out-deg > avg deg (43.0), 3170 (0.0393) with >2*avg.deg (Sun May  4 20:26:08 2014)
>>>>>>> 128e39770fa39eb47573f2a88e998f946af5cd45
#

set title "Out-degree Distribution. G(80583, 1730617). 11784 (0.1462) nodes with out-deg > avg deg (43.0), 3170 (0.0393) with >2*avg.deg"
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
set output 'outDeg.FRDG_TCL_4.png'
plot 	"outDeg.FRDG_TCL_4.tab" using 1:2 title "" with linespoints pt 6,\
	f1(x)=723401.806416*x**-2.203421, f1(x) title "7e+05 * x^{-2.203}  R^2:0.88" with lines linewidth 3
