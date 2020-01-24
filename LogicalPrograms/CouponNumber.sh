#!/bin/bash
source Utility.sh
echo "Coupon Number program"
echo "How many coupons needed"
#Number of Coupons required
read CouponCount
echo "Coupon size"
#size of coupon needed
read CouponSize
#index for array
index=0
#declaring the array
declare -a a
#string for different elements
String="123ABCDabcd456EFGHefgh789ijklIJKLmnopMNOPQRSTqrstUVWuvwxyzXYZZ"
#it will execute Number of coupon times
for i in `seq $CouponCount`
do
echo ".............................."
#it will create 5 element coupon number
for (( j=0;j<$CouponSize;j++ ))
do
#calls the random number
RandomNum 61
ret1=$?
#this will gives the substring value from:number of elements format
char=${String:$ret1:1}
#couppon concatination
Coupon=$Coupon$char
done
#coupon store to corresponding index
a[index]=$Coupon
#index value Incremented
index=`expr $index + 1`
echo $Coupon
#erase all the data in coupon variable
Coupon=""
done
#display all the array elements
echo ${a[@]}
