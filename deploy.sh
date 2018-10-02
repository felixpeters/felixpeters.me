#! /bin/bash
source .env
aws s3 sync public/ $S3_BUCKET
