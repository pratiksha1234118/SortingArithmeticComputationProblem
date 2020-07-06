echo "welcome to Arithmetic Computation & Sorting"
#uc1

echo "Write program to take three inputs –a, b & c"

read -p "enter  a" a
read -p "enter  b" b
read -p "enter  c" c

#uc2

echo "Compute a + b * c"
result=`expr $a + $b '*' $c`
echo $result

#uc3

echo "Compute a * b + c"
result2=`expr $a '*' $b + $c`
echo $result2

#uc4

echo "Compute c + a/b"
result3=`expr $c + $a / $b`
echo $result3

#uc5

echo "Compute a%b+c"
result4=`expr $a % $b + $c`
echo $result4

#uc 6
echo "Store the results in a Dictionary for every Computation"
declare -A dictionary=( ["key1"]=$result ["key2"]=$result2 ["key3"]=$result3 ["key4"]=$result4)
echo "dictionary is ${dictionary[@]}"

#uc7
echo "Read the values from the Dictionary into the array"
Array=([0]=$result [1]=$result2 [2]=$result3 [3]=$result4)
echo "Array ${Array[@]}"

#uc8
echo " Sort the results to show the Computation Result in the Descending Order"
for (( i = 0; i < 4 ; i++ ))
do
   for (( j = $i; j < 4; j++ ))
   do
      if [ ${Array[$i]} -lt ${Array[$j]}  ]; then
           t=${Array[$i]}
           Array[$i]=${Array[$j]}
           Array[$j]=$t
      fi
   done
done

echo -e "\nSorted Numbers in descending Order:"
for (( i=0; i < 4; i++ ))
do
  echo ${Array[$i]}
done

#uc9
echo "Sort the results to show the Computation Value in Ascending Order "
for (( i = 0; i < 4 ; i++ ))
do
   for (( j = $i; j < 4; j++ ))
   do
      if [ ${Array[$i]} -gt ${Array[$j]}  ]; then
           t=${Array[$i]}
           Array[$i]=${Array[$j]}
           Array[$j]=$t
      fi
   done
done

echo -e "\nSorted Numbers in Ascending Order:"
for (( i=0; i < 4; i++ ))
do
  echo ${Array[$i]}
done
