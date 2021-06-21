#! /bin/bash -x
for (( i=0; i<10; i++ ))
do
	num=$(( $RANDOM % 900 + 100 ))
	number[((i))]=$num
done
echo ${number[@]}
greatest=${number[0]}
for (( i=0; i< 10; i++ ))
do
if 
	[ ${number[i]} -gt $greatest ]
then 
	greatest=${number[i]}
fi
done
echo $greatest 
declare -a check
check=(${number[@]//$greatest/0})
greatest=${check[0]}
for (( i=0; i<10; i++ ))
do 
if 
	[ ${check[i]} -gt $greatest ]
then 
	greatest=${check[i]}
fi
done
echo $greatest
smallest=${number[0]}
declare -a checksmall
checksmall=(${number[@]//$smallest/1000})
smallest=${checksmall[0]}
 for (( i=0; i<10; i++ ))
 do
 if
         [ ${checksmall[i]} -lt $smallest ]
 then
         smallest=${checksmall[i]}
 fi
 done
 echo $smallest


for (( i=0; i< 10; i++ ))
do
if [ ${number[i]} -lt $smallest ]
then smallest=${number[i]}
fi
done
echo $smallest
echo "Second Greatest Number is: $greatest
echo "Second Smallest Number is: $smallest
