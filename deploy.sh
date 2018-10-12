#! /bin/bash
source .env
aws s3 sync public/ $S3_BUCKET
aws cloudfront create-invalidation --distribution-id $CF_DISTR_ID --paths '/*'

