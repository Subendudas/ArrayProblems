#! /bin/bash -x
for (( i=0; i<10; i++ ))
do
	num=$(( $RANDOM % 900 + 100 ))
	number[((i))]=$num
done
echo ${number[@]}
for (( i=0; i<10; i++ ))
do 
for (( j=0; j<10-i-1; j++ ))
do
	if [ ${number[j]} -gt ${number[$(( j+1 ))]} ]
then
arr=${number[j]}
number[j]=${number[((j+1))]}
number[((j+1))]=$arr
fi
done
done
echo ${number[@]}
echo "Second Smallest Number is: " ${number[1]}
echo "Second Greatest Number is: " ${number[8]}
