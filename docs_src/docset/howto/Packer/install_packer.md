# Packer install

## By script

```bash
curl -X GET "https://releases.hashicorp.com/packer/" |grep "<a href=" | sed "s/<a href/\\n<a href/g" | sed 's/\"/\"><\/a>\n/2'|grep packer_| sort |uniq|tail -n1|sed "s/>//g"|sed "s/<\/a//g"
```


## Manual method