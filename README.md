# Generate Alignments using Kaldi Pretrained acoustic model
## For the simplicity we are using a Librispeech Model.
1. Install Kaldi in your system by following the documentation on https://kaldi-asr.org/doc/install.html
2. Then create a project folder with directory structure as `/kaldi/egs/<any_name>/s5`
3. Make a soft link for steps and utils using `ln /kaldi/egs/wsj/s5/steps /kaldi/egs/<any_name>/s5`... similarly follow for utils
4. Copy the `conf` `path.sh` and `cmd.sh` from the `/kaldi/egs/wsj/s5` and change the `ROOT` path in the `path.sh` according to your location.
5. In `cmd.sh` change from `queue.pl ---> run.pl`
6. Download the pre-trained Librispeech model from https://kaldi-asr.org/models/m13... Download all three models i.e AM, LM and ivector
7. Extract all three models using `tar -xvf` or `tar -xvzf`
8. Create `wav.scp` `utt2spk` using the script in `create_data.py <path_to_wav_file>`
9. At the end run `run.sh` and get the output in `/kaldi/egs/<any_name>/s5/out.txt` in the format of `<audio_name> 1 <start_time> <end_time> <phones>`
