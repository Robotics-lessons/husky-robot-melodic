#!/bin/sh


echo "rostopic list -p for publisher list"
echo '=========================================================='
rostopic list -p
echo ""
echo "rostopic list -s for subscriber list"
echo '=========================================================='
rostopic list -s
echo '=========================================================='
rostopic list |
  while IFS= read -r line
  do
  	echo "rostopic info $line"
        echo '----------------------------------------------------'
    rostopic info "$line"
  done
