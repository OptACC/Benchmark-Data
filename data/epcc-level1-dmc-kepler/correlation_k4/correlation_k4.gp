# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "correlation_k4.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 896 gangs, vector length 128 - Resulting time 0.004621 (stdev: 2.64575131106e-06)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.004621" at 896.0, 128.0, 0.004621 left
set grid

splot 'correlation_k4.dat' using 1:2:3 notitle with points pointtype 7

splot 'correlation_k4.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'correlation_k4.dat' using 1:2:3 notitle pal with pm3d
