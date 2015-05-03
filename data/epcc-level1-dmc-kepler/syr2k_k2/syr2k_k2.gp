# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "syr2k_k2.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 608 gangs, vector length 64 - Resulting time 0.001102 (stdev: 2e-06)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.001102" at 608.0, 64.0, 0.001102 left
set grid

splot 'syr2k_k2.dat' using 1:2:3 notitle with points pointtype 7

splot 'syr2k_k2.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'syr2k_k2.dat' using 1:2:3 notitle pal with pm3d
