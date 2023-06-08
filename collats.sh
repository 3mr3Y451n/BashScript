#! /bin/bash

for x in $(seq 1024)
do
# this is loop1
	a=$x
	dongu=0
	until [[ $a -eq 1 ]]
	# this is loop2
	do
		if [ $(($a%2)) == 0 ]; then
			let a=a/2
		elif [ $(($a%2)) == 1 ]; then
		#else
			let a=(a*3)+1
		fi
		
		let dongu=dongu+1

	done
echo -------------------- >> collats.txt
echo x\'in degeri: $x >> collats.txt
echo $dongu turda 1\'e ulaştı >> collats.txt
echo >> collats.txt
done

#!/bin/bash

for x in $(seq 1024); do
    a=$x
    dongu=0
    
    while [[ $a -ne 1 ]]; do
        if [[ $((a % 2)) -eq 0 ]]; then
            ((a /= 2))
        else
            ((a = (a * 3) + 1))
        fi
        ((dongu++))
    done
    
    echo "--------------------" >> collats.txt
    echo "x'in degeri: $x" >> collats.txt
    echo "$dongu turda 1'e ulasti" >> collats.txt
    echo >> collats.txt
done