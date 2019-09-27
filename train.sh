docker run --cpus 1 --rm -v ${PWD}:/data -ti crisbal/torch-rnn:base /data/scripts/train.sh "$@"
