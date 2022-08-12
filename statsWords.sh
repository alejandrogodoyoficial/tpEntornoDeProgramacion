#!/bin/bash
longest=0
for word in $(<$1)
do
    len=${#word}
    if (( len > longest ))
    then
        longest=$len
        longword=$word
    fi
done
longest=0
for word in $(<$1)
do
    len=${#word}
    if (( len > longest ))
    then
        longest=$len
        longword=$word
    fi
done
printf 'La palabra mas larga es  %s y su longitud es de  %d.\n' "$longword" "$longest"
shortest=0
for word in $(<$1)
do
    len=${#word}
    if (( len < longest ))
    then
        shortest=$len
        shortword=$word
    fi
done

printf 'La palabra mas corta es  %s y su longitud es de  %d.\n' "$shortword" "$shortest"
sum=0
w=0
for word in $(<$1)
do
    let w=$w+1
    len=${#word}
    let  sum=$sum+$len
 
done
let res=$sum/$w
echo "El promedio es $res"

