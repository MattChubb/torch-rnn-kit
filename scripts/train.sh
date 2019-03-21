#!/bin/bash
echo The training process is very CPU intensive and can take a long time.
echo Checkpoints are made every 200 iterations. If the script is stopped after one of these, sampling can make use of the most recent one.

th train.lua -input_h5 /data/processed_data/data.h5 -input_json /data/processed_data/data.json -gpu -1 -checkpoint_every 200 -rnn_size 512 -num_layers 3 -dropout 0.1 -checkpoint_name /data/models/checkpoint_512_3
