#!/bin/bash -x
       
fruits=(mango grapes orange blueberry pineapple strawberry)

#printing all  the array elements
#echo ${fruits[@]}; #${Array_name[@/*]}

#for finding the element in particular index
#echo ${fruits[2]};

#To find the size/length/number of elements in array
#echo ${#fruits[@]}

#to print the elements of array in range
#echo ${fruits[@] :3 :2}    #${Array_name[@] : indexof1stelement :noofelement]}

#find all the elements  from particular index
#echo ${fruits [@]//mango/banana};

#replace element in array(mango with banana)
#echo ${fruits[@]//mango/banana};

#delete element in array
echo ${fruits[@]/blueberry};
unset fruits[2];
echo ${fruits[@]}
