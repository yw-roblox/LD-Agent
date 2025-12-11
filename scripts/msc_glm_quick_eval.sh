#! /usr/bin/env bash
DATASET_PATH=dataset/MSC

MODEL_PATH=Qwen/Qwen3-4B-Instruct-2507
GENERATOR=logs/models/generator

DATESTR=`date +%Y%m%d-%H%M%S`
LOG_NAME=MSC_EVAL-${DATESTR}.log


python -u main.py --dataset quickeval --data_path ${DATASET_PATH} --data_name test.json --id_set id_set.json \
        --client chatglm --model ${MODEL_PATH}  --generation_model ${GENERATOR} \
        --usr_name SPEAKER_1 --agent_name SPEAKER_2 \
        --gpus 0

