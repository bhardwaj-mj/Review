echo "Enter the numbers:"
read a
read b
read c
declare -A dictionary
dictionary[d]="$((a+b*c))"
dictionary[e]="$((c+a/b))"
dictionary[f]="$((a%b+c))"
dictionary[g]="$((a*b+c))"
echo ${dictionary[@]}
arr[0]=${dictionary[d]}
arr[1]=${dictionary[e]}
arr[2]=${dictionary[f]}
arr[3]=${dictionary[g]}
#echo ${arr[@]}

function sortasc(){
for ((i = 0; i<4; i++))
do
    for((j = 0; j<4-i-1; j++))
    do
     	  if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
echo "Array in Ascending order :"
echo ${arr[@]}
}
sortasc
function sortdes(){
for ((i = 0; i<4; i++))
do
    for((j = 0; j<4-i-1; j++))
    do
        if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
echo "Array in Descending order :"
echo ${arr[@]}
}
sortdes
