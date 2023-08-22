# Generate Alignments using Kaldi Pretrained acoustic model
## For the simplicity we are using a Librispeech Model.
1. Install Kaldi in your system by following the documentation on https://kaldi-asr.org/doc/install.html
2. Then create a project folder with directory structure as `/kaldi/egs/<any_name>/s5`
3. Make a soft link for steps and utils using `ln /kaldi/egs/wsj/s5/steps /kaldi/egs/<any_name>/s5`... similarly follow for utils
4. Copy the `conf` `path.sh` and `cmd.sh` from the `/kaldi/egs/wsj/s5` and change the `ROOT` path in the `path.sh` according to your location.
5. In `cmd.sh` change from `queue.pl ---> run.pl`
