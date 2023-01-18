#!/bin/bash -x

isfulltime=1;
isparttime=2;
perhoursalary=100;
totalsalary=0;
maxhourinmonth=50;
noofworkingdays=20;

#variables
totalemphr=0;
totalworkingdays=1;

function calworkinghour(){
case $1 in
     $isfulltime)
            emphr=8 ;;
     $ispartime)
            emphr=5 ;;
*)
            emphr=0 ;;

esac
echo $emphr
}

while [[ $totalemphr -le $maxhourinmonth && $totalworkingdays -lt $noofworkingdays ]]
do
workinghr=$(calworkinghour $((RANDOM%3)));
totalemphr=$(($totalemphr+$workinghr));

if [ $totalemphr -gt $maxhourinmonth ]
then
      totalemphr=$(($totalemphr-$workinghr));
      break;  #break the loop, terminate
fi
salary=$(($perhoursalary*$totalemphr));
totalsalary=$(($totalsalary+$salary));
((totalworkingdays++))
done
