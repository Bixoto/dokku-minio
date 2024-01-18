# Minio

This repository contains a Docker image based on [`minio/minio`](https://hub.docker.com/r/minio/minio) that overrides
the `CMD` in order to directly start the Minio server.

It can be used to deploy Minio on Dokku.

## Usage

On your server:
```bash
APP_NAME=minio
dokku apps:create "$APP_NAME"
sudo -u dokku mkdir -p "/var/lib/dokku/data/storage/$APP_NAME/volumes/minio"
dokku storage:mount "$APP_NAME" "/var/lib/dokku/data/storage/$APP_NAME/volumes/minio:/minio_data"
dokku config:set --no-restart "$APP_NAME" \
    MINIO_ACCESS_KEY="fill_the_access_key_here" \
    MINIO_SECRET_KEY="fill_the_secret_key_here"
```

Then:

1. Clone this repository
2. (optional) Adjust the version in `Dockerfile`
3. Push to your dokku remote
