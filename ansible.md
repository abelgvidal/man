# ![ansible](media/ansible.png)

Ansible
===============

## Table of content

- [Inventories](#Inventories)
- [Running modules in command line](#running-modules-in-command-line)
- [Playbooks](#Playbooks)
    - [Including files](#including-files)

## Inventories 

Inventories is the list of machines we want to manage and the groups we need:

```
frontend1 ansible_ssh_host=10.0.0.2
backend1 ansible_ssh_host=10.0.0.3
database1 ansible_ssh_host=10.0.0.4

[appserver]
frontend1
backend1

[database]
database1

[appserver]
front enviromentvariableofyourchoice=front
back enviromentvariableofyourchoice=back

[appserver:vars]
envvariableforappgroup=prod
enviromentvariableofyourchoice=valueWillBeOverridenBecauseIsDefinedInTheSameHost
```

## Running modules in command line

```
ansible [3.3.3.1 or namemachine or all] - m module -a 'ls /var/log/*' [--become] [--become-user]
```

if no module given, default is "command" so this implicitly works

```
ansible 3.3.3.1 -a 'ls /var/log/*'
```


## Playbooks

A playbook crosses groups of machines with tasks

```
---
- hosts: all
  vars:
    some_var_you_could_use: some_value

  tasks:
  - name: Install base common packages
    become: yes
    apt: name={{item}} state=present update_cache=yes cache_valid_time=3600
    with_items:
      - git

```

This will install git in all machines.

## Including files 

A playbook can include other files. You can include a file passing a variable:


```
tasks:
  - include: wordpress.yml wp_user=timmy
  - include: wordpress.yml wp_user=alice
  - include: wordpress.yml wp_user=bob
```

or you can include a file passing structured data

```
tasks:
  - include: wordpress.yml
    vars:
        wp_user: timmy
        ssh_keys:
          - keys/one.txt
          - keys/two.txt
```
