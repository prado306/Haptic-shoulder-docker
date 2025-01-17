FROM nvidia/cuda:11.1.1-cudnn8-devel-ubuntu20.04

# Set environment variables (optional)
ENV CUDA_HOME /usr/local/cuda

# Install additional dependencies (if needed)
RUN apt-get update && apt-get install -y \
    build-essential \
    # apt-get install -y xeyes \
    && rm -rf /var/lib/apt/lists/* 
    


# Copy your application code (if applicable)
# COPY . /app

# Set the working directory (if applicable)
WORKDIR /app

# Run your application (if applicable)
# CMD ["python", "app.py"]