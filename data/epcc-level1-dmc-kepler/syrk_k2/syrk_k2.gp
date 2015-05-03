# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "syrk_k2.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 128 gangs, vector length 128 - Resulting time 0.00174066666667 (stdev: 2.30940107676e-06)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.00174066666667" at 128.0, 128.0, 0.00174066666667 left
set grid

splot 'syrk_k2.dat' using 1:2:3 notitle with points pointtype 7

splot 'syrk_k2.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'syrk_k2.dat' using 1:2:3 notitle pal with pm3d
