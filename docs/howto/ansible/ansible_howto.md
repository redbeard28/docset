# Howto : Ansible cmd

## Objectif
In this page, you will learn some basics commands to control yours servers with ansible.

Remember that ansible use YAML file configuration.

## Check your hosts
```bash
ansible all -m ping
```


* __all__ : Name of the group servers
* __-m__ : option for module
* __ping__: use module ping to check connectivity between ansible manager and your servers


## Launche a playbook
```bash
ansible-playbook my-playbook.yml
```
