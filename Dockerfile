FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-runtime
ENV TORCH_CUDA_ARCH_LIST="8.6"
ENV PYTHONUNBUFFERED=1
# paste wandb key below right after the equal sign
ENV WANDB_API_KEY=
# paste wwandb key above right after the equal sign
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "frankiemlop_v1.py"]