# Deep Learning with Pytorch & CUDA

This Dev Container is based off Pytorch's official Docker images, and includes native support for CUDA.

This container includes development libraries.


## Mounting your source code

If you want to mount your source code

1. Create an environment variable pointing to your source directory, from your `.basrc` file.
2. Restart your IDE.
3. Add a mount point to the file `.devcontainer/devcontainer.json`.

### *Example*:

.bashrc
```bash
export SOURCE_PATH="/home/<your_user>/source/"
```

devcontainer.json
```json
"mounts": [
	"source=${localEnv:SOURCE_PATH},target=/home/${localEnv:USER}/dev/source,type=bind",
    ...
```

## Tooling

- nvtop