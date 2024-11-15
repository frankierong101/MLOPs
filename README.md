# MLOPs

# 1.
First copy/get a key from "https://wandb.ai/authorize" to visualise the data down the line. If you don't have an account you'd unfortunetely have to create one here "https://wandb.ai/site/"

## 2.
Secondly enter codespace and go to the Dockerfile, from there insert the key right after the "=" on line 5

### 3.
Thirdly in the terminal paste "docker build -t NAME ." You can replace "NAME" if you wishb with anything in lowercase. 

#### 4.
Follow up with "docker run NAME" if you want
docker run --gpus all test1 python frankiemlop_v1.py --learning_rate 0.00011 --warmup_steps 2 --weight_decay 32
