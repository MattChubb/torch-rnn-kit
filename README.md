# torch-rnn-kit
A set of scripts for automating the torch-rnn preprocess, training and sampling process.

# Requirements
* A machine running Linux (OSX might also work, but is untested)
* Docker

# Quick start
1. Put your source data into the source_data folder
2. Run `./run_all.sh`. You can Ctrl+C to stop the training early and use the most recent checkpoint
3. For further samples, simply run `./sample.sh`
