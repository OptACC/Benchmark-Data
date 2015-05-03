# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "NewBit.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 768 gangs, vector length 576 - Resulting time 4.89e-05 (stdev: 3.69534241384e-06)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "4.89e-05" at 768.0, 576.0, 4.89e-05 left
set grid

splot 'NewBit.dat' using 1:2:3 notitle with points pointtype 7

splot 'NewBit.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'NewBit.dat' using 1:2:3 notitle pal with pm3d
