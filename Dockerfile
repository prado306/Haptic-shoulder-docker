FROM nvidia/cuda:11.1.1-runtime-ubuntu20.04

# Set environment variables (optional)
ENV CUDA_HOME /usr/local/cuda

# Install additional dependencies (if needed)
RUN apt-get update && apt-get install -y \
    build-essential \
    # apt-get install -y xeyes \
    && rm -rf /var/lib/apt/lists/* 
    
RUN apt-get update && apt install -y libgl1 libx11-6 \
    x11-apps \
    mesa-utils \
    libusb-1.0-0-dev 
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libgl1-mesa-dri \
    libglu1-mesa \
    libx11-6 \
    libx11-dev \
    x11-utils \
    udev 




# Copy your application code (if applicable)
# COPY . /app

# Set the working directory (if applicable)
WORKDIR /app

# Run your application (if applicable)
# CMD ["python", "app.py"]