# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "le2d-omp-loop1.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 1024 gangs, vector length 128 - Resulting time 11.767916 (stdev: 0.00864524256456)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "11.767916" at 1024.0, 128.0, 11.767916 left
set grid

splot 'le2d-omp-loop1.dat' using 1:2:3 notitle with points pointtype 7

splot 'le2d-omp-loop1.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'le2d-omp-loop1.dat' using 1:2:3 notitle pal with pm3d
