#!/bin/bash

cat /data/source_data/* > /data/source_data.all

python scripts/preprocess.py \
	--input_txt /data/source_data.all \
	--output_h5 /data/processed_data/data.h5 \
	--output_json /data/processed_data/data.json

rm /data/source_data.all
