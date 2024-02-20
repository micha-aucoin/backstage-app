#!/bin/bash

if [ $(uname -m) = x86_64 ] && [ ! -x /usr/local/bin/kind ] || [ "$(kind version)" != "$KIND_VERSION" ]; then
    curl -Lo ./kind https://kind.sigs.k8s.io/dl/$KIND_VERSION/kind-linux-amd64
    chmod +x ./kind
    sudo mv ./kind /usr/local/bin/kind
else
    echo "Kind is already installed and up to date."
fi
