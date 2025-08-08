FROM pytorch/pytorch:2.8.0-cuda12.8-cudnn9-devel

# Update package lists and install tools
RUN apt-get update && \
    apt-get install -y \
    nvtop 

# Clean up the package manager's cache after installing software.
RUN rm -rf /var/lib/apt/lists/*

# Optional: Set a label for the image
LABEL description="PyTorch with CUDA for Deep Learning development"
