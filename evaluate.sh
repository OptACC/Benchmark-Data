#!/bin/bash
# Use exhaustive run test data from the data directory to evaluate a search
# method (default: Nelder-Mead), returning the runtime of the tuned kernel
# as well as the number of points tested and the percentile of the point found
# relative to the exhaustive test data.

# Usage: ./evaluate.sh [search-method]

if [ "$1" == "" ]; then
	method=nelder-mead
else
	method="$1"
fi

echo "Evaluating $method..."
echo
total_points=0
total_tests=0
max_points_per_kernel=0
echo "Kernel,Time,Stdev,Percentile,Points"
for file in `find data -iname '*.csv'`; do
	dirname=`dirname "$file"`
	dirname=`basename "$dirname"`
	basename=`basename "$file"`
	result=`../OptACC/tuner.py -s "$method" "$file" 2>&1`
	if [ $? -ne 0 ]; then
		echo "$result"
		exit 1
	fi
	# Best result found: num_gangs=256  vector_length=128  => time=0.004645 (stdev=2.60576284416e-05)
	best=`echo "$result" | grep "Best result found:"`
	best_time=`echo "$best" | sed -e 's/^.*time=\([^ ]*\).*$/\1/'`
	best_stdev=`echo "$best" | sed -e 's/^.*stdev=\([^ )]*\).*$/\1/'`
	points=`echo "$result" | grep Tested | cut -c 22-`
	percentile=`echo "$result" | grep ercentile | cut -c 42- | cut -f 1 -d '%'`
	echo "$dirname/$basename,$best_time,$best_stdev,$percentile%,$points"

	let add=`echo "$points" | sed -e 's/ points//'`
	if [ "$add" -gt "$max_points_per_kernel" ]; then
		let max_points_per_kernel=add
	fi
	let total_points+=$add
	let total_tests+=1
done
echo
let avg=total_points/total_tests
echo "$total_points points tested in total; average: $avg per kernel (max: $max_points_per_kernel)"
exit 0
