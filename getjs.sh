#!/bin/bash

cd /root/script/3_httprobe

a=$(cat getjs.txt|wc -l)
mkdir $output/3_js
for((i=1;i<=$a;i+=1)); do file=$(head -$i getjs.txt |tail -1) ; echo "touch $output/3_js/$i.js; curl -k -i -L --speed-time 5 --speed-limit 1 \"$file\" >> $output/3_js/$i.js" >> exe.sh; done

cat exe.sh | parallel --jobs 0 --delay 0.1 --retries 1 ; rm exe.sh
exit
