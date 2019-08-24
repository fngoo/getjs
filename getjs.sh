#!/bin/sh

for i in `seq 1 $(cat getjs.txt|wc -l)`
do
file=$(head -$i getjs.txt |tail -1)
output=$output
curl -L $file>>$output/3_js/$i.js
done
