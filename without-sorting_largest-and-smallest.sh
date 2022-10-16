#! /bin/bash/ -x

max=0
min=1000

sec_max=0
sec_min=1000

declare -A  three_digit_array

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

for r_num in "${three_digit_array[@]}"
do
	if [ $r_num -gt $max ]
	then
		sec_max=$max
		max=$r_num

	elif [[ (($sec_max = 0)) || (($sec_max -lt $r_num)) ]]
	then
		sec_max=$r_num
	fi

	if [ $r_num -lt $min ]
	then
		sec_min=$min
		min=$r_num

	elif [[ (($sec_min = 0)) || (($sec_min -gt $r_num)) ]]
	then
		sec_min=$r_num
	fi
done

echo ${three_digit_array[@]}
echo ${#three_digit_array[@]}
echo ${!three_digit_array[@]}

echo "Maximum among 10 numbers is :- $max "
echo "Minimum among 10 numbers is :- $min "
echo "Second-Maximum among 10 numbers is :- $sec_max "
echo "Second-Minimum among 10 numbers is :- $sec_min "

