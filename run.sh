#!usr/bin/bash

mfccdir=mfcc
stage=1

. ./cmd.sh
. ./path.sh

data_dir=$1

steps/make_mfcc.sh --nj 1 --mfcc-config conf/mfcc_hires.conf --cmd '$train_cmd' data/$data_dir
steps/compute_cmvn_stats.sh data/$data_dir
utils/fix_data_dir.sh data/$data_dir

