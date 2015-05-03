# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "correlation_k3.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 192 gangs, vector length 352 - Resulting time 5.16666666667e-05 (stdev: 5.7735026919e-07)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "5.16666666667e-05" at 192.0, 352.0, 5.16666666667e-05 left
set grid

splot 'correlation_k3.dat' using 1:2:3 notitle with points pointtype 7

splot 'correlation_k3.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'correlation_k3.dat' using 1:2:3 notitle pal with pm3d
