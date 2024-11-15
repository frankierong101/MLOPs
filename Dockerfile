FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-runtime
ENV TORCH_CUDA_ARCH_LIST="8.6"
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "frankiemlop_v1.py", "--learning_rate", "3e-5", "--weight_decay", "0.003", "--train_batch_size", "16", "--eval_batch_size", "16"]

# FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-runtime
# ENV TORCH_CUDA_ARCH_LIST="8.6"
# ENV PYTHONUNBUFFERED=1
# ENV WANDB_API_KEY=308d81b51a88f2d3f358566259b632c72ab1fb98
# WORKDIR /app
# COPY . /app
# RUN pip install --no-cache-dir -r requirements.txt
# CMD ["python", "frankiemlop_v1.py", "--learning_rate", "3e-5", "--weight_decay", "0.003", "--train_batch_size", "16", "--eval_batch_size", "16"]