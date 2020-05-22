################################################################
#   > File Name     : home.sh
#   > Author        : gsj
#   > mail          : guosj.so@gmail.com
#   > Created Time  : 2020.04.16 11:19
################################################################
#!/bin/sh

LENGTH=15  # Control the largest length of your inputs, modify it to change the spacing.

## Your inputs
a=123123123+-
b=abcd
c=34345345
d=


## function
length_a=`echo $a | wc -L`
length_b=`echo $b | wc -L`
length_c=`echo $c | wc -L`
length_d=`echo $d | wc -L`

## 如果你不想保留原变量的话，比如(a,b,c,d)，那就不用more，直接用原变量就可以。
a_more=$a
for ((i_a=$length_a;i_a<$LENGTH;i_a++))
do
	a_more=$(echo "$a_more" | sed "s/$/\ /g")
done

b_more=$b
for ((i_b=$length_b;i_b<$LENGTH;i_b++))
do
	b_more=$(echo "$b_more" | sed "s/$/\ /g")
done

c_more=$c
for ((i_c=$length_c;i_c<$LENGTH;i_c++))
do
	c_more=$(echo "$c_more" | sed "s/$/\ /g")
done

d_more=$d
for ((i_d=$length_d;i_d<$LENGTH;i_d++))
do
	d_more=$(echo "$d_more" | sed "s/$/\ /g")
done


echo
## results
# old
echo -e "\e[1;36mThis is old:\e[0m"
echo "$a | $b | $c | $d"
echo "$b | $c | $d | $a"
echo "$c | $d | $a | $b"
echo "$d | $a | $b | $c"
echo "$d | $c | $b | $a"
echo "$a | $d | $c | $b"
echo "$b | $a | $d | $c"
echo "$c | $b | $a | $d"


echo
echo

# new
echo -e "\e[1;36mThis is new(autoindented):\e[0m"
echo "$a_more | $b_more | $c_more | $d_more"
echo "$b_more | $c_more | $d_more | $a_more"
echo "$c_more | $d_more | $a_more | $b_more"
echo "$d_more | $a_more | $b_more | $c_more"
echo "$d_more | $c_more | $b_more | $a_more"
echo "$a_more | $d_more | $c_more | $b_more"
echo "$b_more | $a_more | $d_more | $c_more"
echo "$c_more | $b_more | $a_more | $d_more"




echo 

#echo "a is '$a',  b is '$b',  c is '$c'."













#export vcshomehome=
#export uvmhomehome=$vcshomehome/123123/qweqwe/dhfjmg
#
#echo $uvmhomehome
