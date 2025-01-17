xhost +local:  # Allow access to X server
docker run --gpus all -it \
  -v ~/Desktop/prad:/data \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  --env DISPLAY=:0 \
  cuda11_1-ubuntu20

  # Example GUI command inside the container
#   xeyes

