#! /usr/bin/env bash
export CUDA_VISIBLE_DEVICES=0

DATASET_PATH=dataset/MSC
CONFIG_PATH=Trainer/configs/generator.yaml
BASE_MODEL_PATH=Qwen/Qwen3-4B-Instruct-2507

python -u Trainer/lora_tune.py $DATASET_PATH $BASE_MODEL_PATH $CONFIG_PATH
