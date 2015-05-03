# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "himeno-omp-loop1.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 448 gangs, vector length 256 - Resulting time 0.3712836 (stdev: 0.00803127168013)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.3712836" at 448.0, 256.0, 0.3712836 left
set grid

splot 'himeno-omp-loop1.dat' using 1:2:3 notitle with points pointtype 7

splot 'himeno-omp-loop1.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'himeno-omp-loop1.dat' using 1:2:3 notitle pal with pm3d
