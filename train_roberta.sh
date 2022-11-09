export PYTHONUNBUFFERED=1

size_ratio=0.75
CKPT_DIR=/data/yyaoqing/fairseq/checkpoint/roberta_pretrain_wikitext-103_subsample_$size_ratio/
DATA_DIR=/data/yyaoqing/fairseq/data-bin/wikitext-103
LOG_DIR=$CKPT_DIR

CUDA_VISIBLE_DEVICES=4,5,6,7 fairseq-hydra-train -m --config-dir examples/roberta/config/pretraining \
--config-name base task.data=$DATA_DIR \
1>$LOG_DIR/train.log 2>$LOG_DIR/train.err &