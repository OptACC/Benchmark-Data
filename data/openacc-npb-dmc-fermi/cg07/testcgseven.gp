# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "testcgseven.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 96 gangs, vector length 480 - Resulting time 6.76666666667e-05 (stdev: 5.7735026919e-07)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "6.76666666667e-05" at 96.0, 480.0, 6.76666666667e-05 left
set grid

splot 'testcgseven.dat' using 1:2:3 notitle with points pointtype 7

splot 'testcgseven.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'testcgseven.dat' using 1:2:3 notitle pal with pm3d
