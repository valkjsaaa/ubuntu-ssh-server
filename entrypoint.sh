#!/bin/bash
# Set the root password from the environment variable
echo "root:${SSH_PASSWORD}" | chpasswd

# Start SSH daemon
exec "$@"
