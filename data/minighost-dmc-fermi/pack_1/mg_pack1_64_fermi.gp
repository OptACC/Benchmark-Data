# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "mg_pack1_64_fermi.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 64 gangs, vector length 128 - Resulting time 6.29433333333e-05 (stdev: 8.7270976466e-06)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "6.29433333333e-05" at 64.0, 128.0, 6.29433333333e-05 left
set grid

splot 'mg_pack1_64_fermi.dat' using 1:2:3 notitle with points pointtype 7

splot 'mg_pack1_64_fermi.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'mg_pack1_64_fermi.dat' using 1:2:3 notitle pal with pm3d
