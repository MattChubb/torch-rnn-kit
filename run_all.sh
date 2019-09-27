echo Running full preprocess+train+sample
./flatten_source_data.sh
./preprocess.sh
./train.sh
./sample.sh
echo Complete. You can now use sample.sh to generate further samples
