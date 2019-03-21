#!/bin/bash
echo The training process is very CPU intensive and can take a long time, but checkpoints are made every 200 iterations.
echo If the script is stopped before completion \(Ctrl+C\), sampling will make use of the most recent checkpoint.

th train.lua -input_h5 /data/processed_data/data.h5 -input_json /data/processed_data/data.json -gpu -1 -checkpoint_every 200 -rnn_size 512 -num_layers 3 -dropout 0.1 -checkpoint_name /tmp/checkpoint_512_3

cp `ls -tr /tmp/checkpoint_512_3*.json | tail -1` /data/models/model.json
cp `ls -tr /tmp/checkpoint_512_3*.t7 | tail -1` /data/models/model.t7
