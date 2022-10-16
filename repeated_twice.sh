#! /bin/bash/ -x

declare -A repeated_twice_array

index=${#repeated_twice_array[@]}

for ((i=10; i<=100; i++))
do
	f_digit=`echo $i | awk -v pos1=1 'BEGIN{FS=""} {print $pos1}'`
	s_digit=`echo $i | awk -v pos2=2 'BEGIN{FS=""} {print $pos2}'`
	if [ $f_digit -eq $s_digit ]
	then
		#echo $i
		repeated_twice_array[$index]=$i
	fi
	((index++))
done

list=${repeated_twice_array[@]}
echo "The list of repeated twice number :- $list"
echo "The length of repeated twice numbers lists is :- " ${#repeated_twice_array[@]}
