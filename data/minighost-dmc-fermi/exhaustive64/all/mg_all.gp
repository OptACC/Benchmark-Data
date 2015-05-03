# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "mg_all.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 448 gangs, vector length 32 - Resulting time 6.77133333333e-05 (stdev: 1.32471292488e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "6.77133333333e-05" at 448.0, 32.0, 6.77133333333e-05 left
set grid

splot 'mg_all.dat' using 1:2:3 notitle with points pointtype 7

splot 'mg_all.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'mg_all.dat' using 1:2:3 notitle pal with pm3d
