# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "syrk_k1.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 128 gangs, vector length 352 - Resulting time 0.000487666666667 (stdev: 1.41539158304e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.000487666666667" at 128.0, 352.0, 0.000487666666667 left
set grid

splot 'syrk_k1.dat' using 1:2:3 notitle with points pointtype 7

splot 'syrk_k1.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'syrk_k1.dat' using 1:2:3 notitle pal with pm3d
