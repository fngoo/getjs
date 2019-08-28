#!/bin/bash
 
echo '#!/bin/bash'>getjs1.sh
echo 'for((i=1;i<=$(cat getjs.txt|wc -l);i+=2)); do file=$(head -$i getjs.txt |tail -1); output=$output; touch $output/3_js/$i.js; curl -L $file>>$output/3_js/$i.js; done'>>getjs1.sh
echo '#!/bin/bash'>getjs2.sh
echo 'for((i=2;i<=$(cat getjs.txt|wc -l);i+=2)); do file=$(head -$i getjs.txt |tail -1); output=$output; touch $output/3_js/$i.js; curl -L $file>>$output/3_js/$i.js; done'>>getjs2.sh
echo '#!/bin/bash'>exe_getjs.sh
echo 'bash getjs1.sh'>>exe_getjs.sh
echo 'bash getjs2.sh'>>exe_getjs.sh
cat exe_getjs.sh | parallel -j 2
