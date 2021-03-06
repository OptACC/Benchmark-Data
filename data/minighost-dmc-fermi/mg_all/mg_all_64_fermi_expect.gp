# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "mg_all_64_fermi_expect.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 448 gangs, vector length 64 - Resulting time 8.33666666667e-05 (stdev: 1.53529617121e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "8.33666666667e-05" at 448.0, 64.0, 8.33666666667e-05 left
set grid

splot 'mg_all_64_fermi_expect.dat' using 1:2:3 notitle with points pointtype 7

splot 'mg_all_64_fermi_expect.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'mg_all_64_fermi_expect.dat' using 1:2:3 notitle pal with pm3d
