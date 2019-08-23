#!/bin/sh
for i in $(wc -l getjs.txt)
do
file=$(head -$i getjs.txt |tail -1)
curl -L $file>>$output/3_js/$i.js
done
