# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "mg_stencil_3.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 1024 gangs, vector length 768 - Resulting time 0.000346263333333 (stdev: 2.31485514306e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.000346263333333" at 1024.0, 768.0, 0.000346263333333 left
set grid

splot 'mg_stencil_3.dat' using 1:2:3 notitle with points pointtype 7

splot 'mg_stencil_3.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'mg_stencil_3.dat' using 1:2:3 notitle pal with pm3d
