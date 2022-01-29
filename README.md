# dev_terraform

## Preparation

For the credential information, AWS KMS is used to copy the encrypted key from the KMS-dedicated credential, and the new credential used by Terraform is overwritten and decrypted.

- setting credentials aws kms

https://blog.adachin.me/archives/38464

## Setting dev

- run
```
$ cd ~/git/github/dev_terraform/docker/dev/terraform
$ docker-compose up -d
```

- setting credentials
```
$ docker exec -it terraform-dev bash
# vim ~/.aws/credentials

# /var/www/dev_terraform/docker/dev/terraform/setting_dev.sh
```

- terraform init

```
# cd /var/www/dev_terraform
# terraform init

```

- validate,plan,apply

```
# terraform validate
# terraform plan
# terraform apply
```

