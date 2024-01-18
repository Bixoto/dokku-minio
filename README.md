# Minio

This repository contains a Docker image based on [`minio/minio`](https://hub.docker.com/r/minio/minio) that overrides
the `CMD` in order to directly start the Minio server.

It can be used to deploy Minio on Dokku.

## Usage

1. Clone this repository
2. Create the app on your Dokku server: `dokku apps:create minio`
3. (optional) Adjust the version in `Dockerfile`
4. Push to your dokku remote
