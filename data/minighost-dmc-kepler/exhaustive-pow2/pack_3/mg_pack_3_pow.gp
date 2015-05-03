# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "mg_pack_3_pow.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 16 gangs, vector length 32 - Resulting time 1.502e-05 (stdev: 0.0)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "1.502e-05" at 16.0, 32.0, 1.502e-05 left
set log x
set log y
set grid

splot 'mg_pack_3_pow.dat' using 1:2:3 notitle with points pointtype 7

splot 'mg_pack_3_pow.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'mg_pack_3_pow.dat' using 1:2:3 notitle pal with pm3d
