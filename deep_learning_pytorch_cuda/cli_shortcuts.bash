#!/bin/bash

# Expectations
## DEV_CONTAINER_PATH

start_dev_container() {
    devcontainer up --config "$DEV_CONTAINER_PATH/.devcontainer/ros1/devcontainer.json" --workspace-folder "$DEV_CONTAINER_PATH"
}

log_into_dev_container() {
    devcontainer exec --config "$DEV_CONTAINER_PATH/.devcontainer/devcontainer.json" --workspace-folder "$DEV_CONTAINER_PATH" /bin/bash
}

stop_dev_container() {
    docker container stop dev_container
}

remove_existing_dev_container() {
    docker container rm dev_container
}

prune_all_docker_resources() {
    docker builder prune --all --force
    docker container prune --force
    docker image prune --all --force
}