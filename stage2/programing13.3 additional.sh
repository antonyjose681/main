#!/bin/bash -x

isfulltime=1;
isparttime=2;
perhoursalary=100;
empcheck=$((RANDOM%3));
noofworkingdays=5;
totalsalary=0;

for (( day=1; day<=$noofworkingdays; day++))
do
  empcheck=$((RANDOM%3));
case $empcheck in
      $isfulltime)
emphr=8
;;
$isparttime)
emphr=5
;;
*)
emphr=0
esac
salary=$(($emphr*$perhoursalary));
totalsalary=$(($totalsalary+$salary));
done
