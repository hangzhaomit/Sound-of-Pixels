#!/bin/bash

MODEL_ID=MUSIC-2mix-LogFreq-resnet18dilated-unet7-linear-frames3stride24-maxpool-binary-weightedLoss-channels32-epoch100-step40_80
MODEL_PATH=./ckpt/$MODEL_ID
LINK_RELEASE=http://sound-of-pixels.csail.mit.edu/release

LIST_VAL=$LINK_RELEASE/val.csv
WEIGHTS_FRAME=$LINK_RELEASE/${MODEL_ID}/frame_best.pth
WEIGHTS_SOUND=$LINK_RELEASE/${MODEL_ID}/sound_best.pth
WEIGHTS_SYNTHESIZER=$LINK_RELEASE/${MODEL_ID}/synthesizer_best.pth

# Download val list model weights
wget -P ./data $LIST_VAL
if [ ! -e $MODEL_PATH ]; then
  mkdir $MODEL_PATH
fi
wget -P $MODEL_PATH $WEIGHTS_SOUND
wget -P $MODEL_PATH $WEIGHTS_FRAME
wget -P $MODEL_PATH $WEIGHTS_SYNTHESIZER
