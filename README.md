# Ubuntu SSH Server Docker Image

This Docker image is based on Ubuntu and includes an OpenSSH server. The SSH server is configured to allow root login with a password that can be set at runtime using an environment variable.

## Contents
- `Dockerfile`: Contains all the commands to assemble the image.
- `entrypoint.sh`: A script that sets the root password and starts the SSH server.
- `README.md`: This file, providing documentation.

## Building the Docker Image

To build the image, navigate to the directory containing the Dockerfile and run the following command:

```bash
docker build -t ubuntu_ssh .
```

## Running the Docker Container

To run the container with SSH access:

```bash
docker run -d -p 22:22 -e SSH_PASSWORD=<your_password> ubuntu_ssh
```

Replace `<your_password>` with the desired password for the root user.

## Connecting to the SSH Server

After the container is running, you can SSH into it using:

```bash
ssh root@localhost
```

Use the password specified at the time of running the container.

## Security Note

This setup allows root access via SSH using a password specified at runtime. For production environments, consider using more secure methods like SSH key pairs and disabling password authentication.
