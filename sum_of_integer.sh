#! /bin/bash/ -x

declare -a integerArray

index=${#integerArray[@]}
sum=0
while ((count<3))
do
	read -p "Enter number :- " num
	integerArray[$index]=$num
	((index++))
	((count++))
done

for num in "${integerArray[@]}"
do
	ele=$num
	sum=$(($sum+$ele))
done

if [ $sum -eq 0 ]
then
	echo "True"
else
	echo "False"
fi

echo ${integerArray[@]}

echo $sum
