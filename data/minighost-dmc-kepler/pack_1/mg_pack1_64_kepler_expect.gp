# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "mg_pack1_64_kepler_expect.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 448 gangs, vector length 640 - Resulting time 0.000157673333333 (stdev: 5.84978916999e-06)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.000157673333333" at 448.0, 640.0, 0.000157673333333 left
set grid

splot 'mg_pack1_64_kepler_expect.dat' using 1:2:3 notitle with points pointtype 7

splot 'mg_pack1_64_kepler_expect.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'mg_pack1_64_kepler_expect.dat' using 1:2:3 notitle pal with pm3d
