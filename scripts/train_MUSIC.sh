#!/bin/bash

OPTS=""
OPTS+="--id MUSIC "
OPTS+="--num_mix 2 "
OPTS+="--log_freq 1 "
OPTS+="--arch_sound unet7 "
OPTS+="--arch_synthesizer linear "
OPTS+="--arch_frame resnet18dilated "
OPTS+="--num_frames 1 "
OPTS+="--stride_frames 24 "
OPTS+="--num_channels 32 "

OPTS+="--binary_mask 1 "
OPTS+="--loss bce "
OPTS+="--weighted_loss 1 "

OPTS+="--img_pool maxpool "
OPTS+="--img_activation sigmoid "
OPTS+="--sound_activation no "
OPTS+="--output_activation sigmoid "

OPTS+="--list_train data/MUSIC21_train.csv "
OPTS+="--list_val data/MUSIC21_val.csv "
OPTS+="--root_audio data/MUSIC "
OPTS+="--root_frame data/MUSIC "

OPTS+="--audLen 65535 "
OPTS+="--audRate 11025 "
OPTS+="--frameRate 8 "
OPTS+="--num_gpus 4 "
OPTS+="--workers 48 "
OPTS+="--batch_size_per_gpu 20 "
OPTS+="--lr_frame 1e-4 "
OPTS+="--lr_sound 1e-3 "
OPTS+="--lr_synthesizer 1e-3 "

OPTS+="--dup_trainset 100 "
OPTS+="--num_epoch 100 "
OPTS+="--lr_steps 40 80 "

OPTS+="--disp_iter 20 "
OPTS+="--num_vis 40 "
OPTS+="--num_val 256 "

python -u main.py $OPTS
