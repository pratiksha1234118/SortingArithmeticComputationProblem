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

