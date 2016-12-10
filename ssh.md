# SSH

## Create key 

ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

## Authorize key in server

```
cat ~/.ssh/id_rsa.pub | ssh root@123.45.56.78 "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"
```
