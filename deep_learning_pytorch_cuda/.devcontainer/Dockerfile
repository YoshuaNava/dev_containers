ARG BASE_IMAGE=pytorch/pytorch:2.8.0-cuda12.8-cudnn9-devel
FROM ${BASE_IMAGE}

# Set non-interactive mode for apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install tools
RUN apt-get update && \
    apt-get install -y \
    nvtop \
    htop \
    btop \
    nload \
    git \
    curl

## Debuggers
RUN apt-get install -y \
    gdb \
    lldb \
    valgrind

## C++
RUN apt-get install -y \
    build-essential \
    ccache \
    clang \
    clang-tidy \
    clang-format \
    cmake

## Python
### Black?

# Clean up the package manager's cache after installing software.
RUN rm -rf /var/lib/apt/lists/*

# Install UV
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# Optional: Set a label for the image
LABEL description="Dev Container"
