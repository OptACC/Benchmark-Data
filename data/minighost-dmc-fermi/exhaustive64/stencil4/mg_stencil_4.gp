# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "mg_stencil_4.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 576 gangs, vector length 640 - Resulting time 0.000335933333333 (stdev: 2.51943651107e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.000335933333333" at 576.0, 640.0, 0.000335933333333 left
set grid

splot 'mg_stencil_4.dat' using 1:2:3 notitle with points pointtype 7

splot 'mg_stencil_4.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'mg_stencil_4.dat' using 1:2:3 notitle pal with pm3d
