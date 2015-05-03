# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "testcgsix.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 224 gangs, vector length 384 - Resulting time 0.748666666667 (stdev: 0.00057735026919)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.748666666667" at 224.0, 384.0, 0.748666666667 left
set grid

splot 'testcgsix.dat' using 1:2:3 notitle with points pointtype 7

splot 'testcgsix.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'testcgsix.dat' using 1:2:3 notitle pal with pm3d
