# openvpnの作り方


```
# xxxxxxxxxxxxxxxxxxxx部分は可変
acccess_key=xxxxxxxxxxxxxxxxxxxx
secret_acccess_key=xxxxxxxxxxxxxxxxxx
alias t='docker run -e AWS_ACCESS_KEY_ID=${acccess_key} -e AWS_SECRET_ACCESS_KEY=${secret_acccess_key} -it -v $PWD:/app/ -w /app/ hashicorp/terraform:0.12.4'

t apply
```
