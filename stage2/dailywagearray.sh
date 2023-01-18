#!/bin/bash

isparttime=1;
isfulltime=2;
maxhrsinmonth=100;
emprateperhour=0;
numofworkingdays=50;

#variables
totalemphr=0;
totalworkingdays=0;

function getworkhrs(){
local $empcheck=$1
case $1empcheck in
     $isfulltime)
            emphr=8 ;;
     $ispartime)
            emphr=4 ;;
*)
            emphr=0 ;;

esac
echo $emphr
}
function getwmpwage(){
localemphr=$1
echo $(($emphr*$emprateperhr))
}

while [[ $totalemphr -lt $maxhourinmonth && $totalworkingdays -lt $noofworkingdays ]]
do
((totalworkingdays++))
empcheck=$((RANDOM%3));
emphr="$(getworkhrs $empcheck)"
totalemphr=$(($totalemphr+$emphr));
dailywage[$totalworkingdays]="$((getempwage $emphr))"
done
totalsalary =$(($totalemphr*emprateperhr));
echo $(dailywage[@])





