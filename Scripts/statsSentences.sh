#!/bin/bash

file=$1
temp=/tmp/temporal

sed -e 's/, [¿¡]/ /g' -e 's/[?\!],//g' -e 's/\. [A-Z0-9]/\n\U&/g' -e 's/[ \.][¿¡][^a-z]/\n\U&/g' <$file> $temp

sed -i -e 's/[",:;#\$\&\*]//g' -e 's/[?¡][ \.][^a-z]/\n\U&/g' -e 's/\. [A-Z0-9]/\n\U&/g' $temp

sed -i -e 's/^[?\!\.]//g' -e 's/^ [¿¡]//g' -e 's/[¿?¡\!\.]//g' $temp

lenghtWords=$(grep -E -o "[A-Z0-9][^.]*" $temp | wc -w)

sentences=$(grep -E -o "[A-Z0-9][^.]*" $temp | wc -l)

average=$(echo "scale=2; $lenghtWords / $sentences" | bc -l)

grep -o "[A-Z0-9][^.]*" $temp >> /tmp/filtrado

while IFS= read -r line; do echo $line | wc -w; done < /tmp/filtrado >> /tmp/tmp2

sort -n /tmp/tmp2 > /tmp/ordenado

min=$(head -1 /tmp/ordenado)
max=$(tail -1 /tmp/ordenado)



echo "La oración con mayor longitud tiene $max. 
La oración con menor longitud tiene $min.
El promedio es $average."



rm /tmp/filtrado /tmp/tmp2 /tmp/ordenado /tmp/temporal
unset lenghtWords sentences average min max temp
