# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "threedconv.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 288 gangs, vector length 192 - Resulting time 0.013232 (stdev: 1.63707055437e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.013232" at 288.0, 192.0, 0.013232 left
set grid

splot 'threedconv.dat' using 1:2:3 notitle with points pointtype 7

splot 'threedconv.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'threedconv.dat' using 1:2:3 notitle pal with pm3d
