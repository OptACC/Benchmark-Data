# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "mvt_k1.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 704 gangs, vector length 64 - Resulting time 0.000508 (stdev: 1.86815416923e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.000508" at 704.0, 64.0, 0.000508 left
set grid

splot 'mvt_k1.dat' using 1:2:3 notitle with points pointtype 7

splot 'mvt_k1.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'mvt_k1.dat' using 1:2:3 notitle pal with pm3d
