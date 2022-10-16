#! /bin/bash/ -x

read -p "Enter a number :- " usrInput

declare -a prime_factorization_array

index=${#prime_factorization_array[@]}

count=0
for((num=2; num<=$((usrInput/2)); num=$((num+1)) ))
do
	if [ $(($usrInput%$num)) -eq 0 ]
	then
		prime_factorization_array[$count]=$num
		count=$((count+1))
#	else
#		num=$(($num+1))
	fi
done

prime_factorization_array[$count]=$usrInput



echo "The prime factorization indexing :- ${!prime_factorization_array[@]}"

echo "The prime factorization length is :- ${#prime_factorization_array[@]}"

echo "The prime factorization value is :- ${prime_factorization_array[@]}"
