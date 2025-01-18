xhost +local:  # Allow access to X server
nvidia-docker &> /dev/null
echo "=========================" 
echo "=nvidia docker installed="
echo "========================="
docker run --gpus all -it \
  --privileged \
  --runtime=nvidia \
  --env DISPLAY=$DISPLAY \
  --env XAUTHORITY=${XAUTH} \
  --env QT_X11_NO_MITSHM=1 \
  --env LIBGL_ALWAYS_INDIRECT= \
  --env LIBGL_ALWAYS_SOFTWARE=1 \
  -e NVIDIA_DRIVER_CAPABILITIES=all \
  --rm \
  -v ~/Desktop/prad:/data \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  cuda11_1-ubuntu20

  # Example GUI command inside the container
#   xeyes

