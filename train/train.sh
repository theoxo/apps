USE_TF=NO deepspeed tune_apps_gpt.py  \
#USE_TF=NO python3 tune_apps_gpt.py  \
--save-dir=./save  \
--arch=EleutherAI/gpt-neo-125M \
--apps-train-files=../APPS/data_split/train.json \
--apps-dataroot=../APPS/ \
--grad-acc-steps=8 \
--epochs=10 \
--fp16 \
--batch-size-per-replica=2 \
--deepspeed=deepspeed_config.json \
#--load=/path/to/model \  # Can be used to restart from checkpoint
