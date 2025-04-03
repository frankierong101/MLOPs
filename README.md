# Steps to run

NOTE: If you want gpu support on your local device(roughly 30m time saved for total epoch times), fork my repo, clone it onto an empty directory and then follow steps 1-4 below but for step 4, use these commands below instead of the ones I listed run <br>
```sh docker run --gpus all test1 ``` 
OR 
```sh docker run --gpus all test1 python frankiemlop_v1.py {--a A --b B --c C}```

## 1.
First copy/get a key from "https://wandb.ai/authorize" to visualise the data down the line. If you don't have an account you'd unfortunetely have to create one here "https://wandb.ai/site/"

## 2.
Secondly enter codespace and go to the Dockerfile, from there insert the key right after the "=" on line 5

## 3.
Thirdly in the terminal paste "docker build -t NAME ." You can replace "NAME" if you wishb with anything in lowercase. This process took me 4 minutes when I ran it on github codespace

## 4.
Follow up with either "docker run NAME"(without passing in parameters) or "docker run test1 python frankiemlop_v1.py {--a A --b B --c C}". Former allows you to run with default values while the latter allows you to change the hyperparameters. Within the curly brackets, lowercase means the hyperparemeters and uppercase means the hyperparemeter values. Example can see below, while a list of all the hyperparemeters and syntax can be found at the very end of this file.

*docker run test1 python frankiemlop_v1.py --learning_rate 0.00011 --warmup_steps 2 --weight_decay 32*

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
