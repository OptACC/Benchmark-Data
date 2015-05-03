# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "himeno-omp-loop1.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 448 gangs, vector length 96 - Resulting time 0.3883572 (stdev: 0.000712072468222)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.3883572" at 448.0, 96.0, 0.3883572 left
set grid

splot 'himeno-omp-loop1.dat' using 1:2:3 notitle with points pointtype 7

splot 'himeno-omp-loop1.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'himeno-omp-loop1.dat' using 1:2:3 notitle pal with pm3d
