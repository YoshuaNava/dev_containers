#!/bin/bash

# Expectations
## DEEP_LEARNING_DEV_CONTAINER_PATH

start_deep_learning_dev_container() {
    devcontainer up --config "$DEEP_LEARNING_DEV_CONTAINER_PATH/.devcontainer/ros1/devcontainer.json" --workspace-folder "$DEEP_LEARNING_DEV_CONTAINER_PATH"
}

log_into_deep_learning_dev_container() {
    devcontainer exec --config "$DEEP_LEARNING_DEV_CONTAINER_PATH/.devcontainer/devcontainer.json" --workspace-folder "$DEEP_LEARNING_DEV_CONTAINER_PATH" /bin/bash
}

stop_deep_learning_dev_container() {
    docker container stop deep_learning_pytorch_cuda
}

remove_existing_deep_learning_dev_container() {
    docker container rm deep_learning_pytorch_cuda
}

prune_all_docker_resources() {
    docker builder prune --all --force
    docker container prune --force
    docker image prune --all --force
}