FROM minio/minio:RELEASE.2023-03-24T21-41-23Z
COPY CHECKS .
CMD ["minio", "server", "/minio_data"]

