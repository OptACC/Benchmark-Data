# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "27s-omp-loop1.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 320 gangs, vector length 224 - Resulting time 0.003141 (stdev: 1.2747548784e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.003141" at 320.0, 224.0, 0.003141 left
set grid

splot '27s-omp-loop1.dat' using 1:2:3 notitle with points pointtype 7

splot '27s-omp-loop1.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot '27s-omp-loop1.dat' using 1:2:3 notitle pal with pm3d
