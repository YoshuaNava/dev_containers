#!/bin/bash

cd $SOURCE_PATH

uv --version
uv venv .venv
uv sync --all-extras --dev