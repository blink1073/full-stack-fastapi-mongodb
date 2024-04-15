#!/usr/bin/env bash

set -x

pip install -e ".[checks]"
mypy app
black app --check
isort --recursive --check-only app
flake8
