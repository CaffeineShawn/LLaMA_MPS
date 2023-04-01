python3 -m venv env
source env/bin/activate
model_name=$1

python3 chat.py --ckpt_dir models/${model_name} --tokenizer_path models/tokenizer.model --max_batch_size 8 --max_seq_len 256