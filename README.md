# Steps to run

NOTE: If you have a NVIDIA driver and want to save time(roughly 30m time saved for total epoch times), clone my repo onto an empty directory and then follow steps 1-4 below but for step 4, use these commands below instead of the ones I listed run
```sh 
docker run --gpus all -e WANDB_API_KEY=YOUR_WANDB_KEY_HERE NAME
``` 
OR 
```sh 
docker run --gpus all -e WANDB_API_KEY=YOUR_WANDB_KEY_HER NAME python frankiemlop_v1.py {--a A --b B --c C}
```

## 1.
First get a key from "https://wandb.ai/authorize" to visualise the data down the line. If you don't have an account you'd unfortunetely have to create one here "https://wandb.ai/site/"

## 2.
Secondly, open the terminal and run: 
```sh
docker build -t NAME .
```
You can replace "NAME" with any lowercase name of your choice if you wish. This process took me 4 minutes when I ran it on github codespace

## 3.
Follow up with either the first option(not passing in parameters) or the latter if you wan't to pass parameters in. Keep in mind to replace the placeholder text of wandb key with your own key from step 1
```sh
docker run -e WANDB_API_KEY=YOUR_WANDB_KEY_HERE NAME
```
or 
```sh
docker run -e WANDB_API_KEY=YOUR_WANDB_KEY_HERE NAME python frankiemlop_v1.py {--a A --b B --c C}
```
Within the curly brackets, lowercase means the hyperparemeters and uppercase means the hyperparemeter values. Example can be seen below, while a list of all the hyperparemeters can be found at the very end of this file.

```sh
docker run --gpus all -e WANDB_API_KEY=YOUR_WANDB_KEY_HERE NAME python frankiemlop_v1.py --learning_rate 0.00011 --warmup_steps 2 --weight_decay 32
```
# Hyperparameters
- `--model_name`
- `--task_name`
- `--max_seq_length`
- `--train_batch_size`
- `--eval_batch_size`
- `--learning_rate`
- `--warmup_steps`
- `--weight_decay`
- `--epochs`
