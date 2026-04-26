#!/bin/bash

mc alias set local http://minio:9000 $MINIO_ROOT_USER $MINIO_ROOT_PASSWORD

mc mb local/my-bucket
mc policy set public local/my-bucket

echo "Bucket created successfully"