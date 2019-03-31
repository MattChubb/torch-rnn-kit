# torch-rnn-kit
A set of scripts for automating the torch-rnn preprocess, training and sampling process.
This is based off torch-rnn (https://github.com/crisbal/docker-torch-rnn) and the Docker images thereof (https://github.com/crisbal/docker-torch-rnn)

# Requirements
* A machine running Linux (OSX might also work, but is untested)
* Docker
* Some sample data, the more the better

# Quick start
1. Put your source data into the `source_data` folder
2. Run `./run_all.sh`. 
3. For further samples, simply run `./sample.sh`

Please note that training can and will take a long time and consume a lot of processing power. Checkpoints are saved every 200 iterations, so it's reccommended you Ctrl+C to stop the training early to use the most recent checkpoint.

# Step-by-step
1. Put your source data into the `source_data` folder
2. Preprocess using `./preprocess.sh`
3. Train using `./train.sh`
4. After 200 iterations or more, stop the training with Ctrl+C
5. Generate samples using `./sample.sh`
