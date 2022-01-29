#!/bin/bash

aws --profile=terraform-kms s3 cp s3://hoge/dev.key /root/.aws/

aws --profile=hoge kms decrypt \
--ciphertext-blob fileb:///root/.aws/dev.key \
--output text \
--query Plaintext \
| base64 --decode > /root/.aws/newcredentials

mv /root/.aws/newcredentials /root/.aws/credentials
