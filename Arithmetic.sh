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

#uc3

echo "Compute c + a/b"
result3=`expr $c + $a / $b`
echo $result3

