#!/bin/sh
echo "rosnode list"
rosnode list
echo ""
rosnode list |
  while IFS= read -r line
  do
  	echo "rosnode info $line"
    rosnode info "$line"
  done

echo ""
echo "rostopic list -p"
echo '=========================================================='
rostopic list -p
echo ""
echo "rostopic list -s"
echo '=========================================================='
rostopic list -s
