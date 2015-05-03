# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "covariance_k3.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 672 gangs, vector length 128 - Resulting time 0.00468233333333 (stdev: 1.06926766216e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.00468233333333" at 672.0, 128.0, 0.00468233333333 left
set grid

splot 'covariance_k3.dat' using 1:2:3 notitle with points pointtype 7

splot 'covariance_k3.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'covariance_k3.dat' using 1:2:3 notitle pal with pm3d
