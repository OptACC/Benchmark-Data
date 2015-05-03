# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "himeno-omp-loop1.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 416 gangs, vector length 480 - Resulting time 0.4956198 (stdev: 0.00631289598362)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.4956198" at 416.0, 480.0, 0.4956198 left
set grid

splot 'himeno-omp-loop1.dat' using 1:2:3 notitle with points pointtype 7

splot 'himeno-omp-loop1.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'himeno-omp-loop1.dat' using 1:2:3 notitle pal with pm3d
