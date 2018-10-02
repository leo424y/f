#!/bin/bash

a=$(cat ./exp/tri4/decode_train_dev/wer_* | grep WER | ./utils/best_wer.sh | cut -d' ' -f 1-2)

b=$(grep "$a" -r  ./exp/tri4/decode_train_dev/ | sort | head -1 )

c=$(echo $b | cut -d'_' -f 4-5 | cut -d':' -f 1 | sed -e "s/_/./g")

d=$(echo ./exp/tri4/decode_train_dev/scoring/$c.txt)

echo "# $d"
cat $d
