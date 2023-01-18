#!/bin/bash -x

isfulltime=1;
isparttime=2;
perhoursalary=100;
totalsalary=0;
maxhourinmonth=50;
noofworkingdays=20;

#variables
totalemphr=0;
totalworkingdays=0;

while [[ $totalemphr -le $maxhourinmonth && $totalworkingdays -lt $noofworkingdays ]] 
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
;;
esac
totalemphr=$(($totalemphr+$emphr));
if [ $totalemphr -gt $maxhourinmonth ]
then
      totalemphr=$(($totalemphr-$emphr));
      break;
fi
salary=$(($perhoursalary*$totalemphr));
totalsalary=$(($totalsalary+$salary));
((totalworkingdays++))
done

