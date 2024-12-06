#!/bin/bash

# Navigate to the Buildroot directory
BUILDROOT_DIR="buildroot"

if [ -d "$BUILDROOT_DIR" ]; then
    echo "Cleaning Buildroot environment..."
    (cd "$BUILDROOT_DIR" && make distclean)
    echo "Buildroot has been cleaned."
else
    echo "Error: Buildroot directory '$BUILDROOT_DIR' not found."
    exit 1
fi

