#!/bin/bash

gpu=1
checkpoint=200
size=512
layers=3
dropout=0.05

echo The training process is very CPU intensive and can take a long time, but checkpoints are made every $checkpoint iterations.
echo If the script is stopped before completion \(Ctrl+C\), sampling will make use of the most recent checkpoint.

train_command="-input_h5 /data/processed_data/data.h5 -input_json /data/processed_data/data.json -gpu -$gpu -checkpoint_every $checkpoint -rnn_size $size -num_layers $layers -dropout $dropout -checkpoint_name /tmp/checkpoint"

if [[ -f /data/models/model.t7 ]]; then
    th train.lua -init_from /data/models/model.t7 $train_command $@
else
    th train.lua $train_command $@
fi

cp `ls -tr /tmp/checkpoint*.json | tail -1` /data/models/model.json
cp `ls -tr /tmp/checkpoint*.t7 | tail -1` /data/models/model.t7
