# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "mg_all_64_kepler_expect.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 896 gangs, vector length 192 - Resulting time 0.000542956666667 (stdev: 0.000116938062808)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.000542956666667" at 896.0, 192.0, 0.000542956666667 left
set grid

splot 'mg_all_64_kepler_expect.dat' using 1:2:3 notitle with points pointtype 7

splot 'mg_all_64_kepler_expect.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'mg_all_64_kepler_expect.dat' using 1:2:3 notitle pal with pm3d
