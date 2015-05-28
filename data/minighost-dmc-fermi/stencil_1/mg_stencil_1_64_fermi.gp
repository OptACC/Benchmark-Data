# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "mg_stencil_1_64_fermi.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 64 gangs, vector length 448 - Resulting time 0.000342446666667 (stdev: 3.02272018773e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.000342446666667" at 64.0, 448.0, 0.000342446666667 left
set grid

splot 'mg_stencil_1_64_fermi.dat' using 1:2:3 notitle with points pointtype 7

splot 'mg_stencil_1_64_fermi.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'mg_stencil_1_64_fermi.dat' using 1:2:3 notitle pal with pm3d
