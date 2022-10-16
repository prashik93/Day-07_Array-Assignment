#! /bin/bash/ -x

declare -A three_digit_array

index=${#three_digit_array[@]}

for ((count=0; count<10; count++))
do
	num=$((RANDOM%899+100))
	if [ $num ]
	then
		three_digit_array[$index]=$num
	fi
	((index++))
done

sort_array=`for num in ${three_digit_array[@]}; do echo $num; done | sort`
max=`for num in ${three_digit_array[@]}; do echo $num; done | sort -nr | head -1`
min=`for num in ${three_digit_array[@]}; do echo $num; done | sort | head -1`
sec_max=`for num in ${three_digit_array[@]}; do echo $num; done | sort -nr | head -2 | tail -1`
sec_min=`for num in ${three_digit_array[@]}; do echo $num; done | sort | head -2 | tail -1`


echo ${three_digit_array[@]}
echo ${#three_digit_array[@]}
echo ${!three_digit_array[@]}

echo $sort_array
echo "Maximum among 10 numbers :- $max"
echo "Minimum among 10 numbers :- $min"
echo "Second Maximum among 10 numbers :- $sec_max"
echo "Second Minimum among 10 numbers :- $sec_min"
