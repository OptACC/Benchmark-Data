# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "vecadd-omp.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 256 gangs, vector length 576 - Resulting time 0.2798216 (stdev: 0.000988429714244)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.2798216" at 256.0, 576.0, 0.2798216 left
set grid

splot 'vecadd-omp.dat' using 1:2:3 notitle with points pointtype 7

splot 'vecadd-omp.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'vecadd-omp.dat' using 1:2:3 notitle pal with pm3d
