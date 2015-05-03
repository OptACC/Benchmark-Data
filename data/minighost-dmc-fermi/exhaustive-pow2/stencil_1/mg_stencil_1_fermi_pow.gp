# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "mg_stencil_1_fermi_pow.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 512 gangs, vector length 64 - Resulting time 0.00035866 (stdev: 2.02711297169e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.00035866" at 512.0, 64.0, 0.00035866 left
set log x
set log y
set grid

splot 'mg_stencil_1_fermi_pow.dat' using 1:2:3 notitle with points pointtype 7

splot 'mg_stencil_1_fermi_pow.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'mg_stencil_1_fermi_pow.dat' using 1:2:3 notitle pal with pm3d
