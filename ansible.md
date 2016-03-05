

Ansible
===============

# Inventories 

```
frontend1 ansible_ssh_host=10.0.0.2
backend1 ansible_ssh_host=10.0.0.3
database1 ansible_ssh_host=10.0.0.4

[appserver]
frontend1
backend1

[database]
database1
```

[appserver]
front enviromentvariableofyourchoice=front
back enviromentvariableofyourchoice=back

[appserver:vars]
envvariableforappgroup=prod
enviromentvariableofyourchoice=valueWillBeOverridenBecauseIsDefinedInTheSameHost
```

Vars can be defined in hosts_vars and groups_vars folders. File must match hostname and group name. To apply to all use file all.yml.

To define variable runner in group appserver:

```
echo 'runner=mamba' > group_vars/appserver.yml
```


## Running commands

```
ansible [3.3.3.1 or namemachine or all] - m module -a 'ls /var/log/*' [--become] [--become-user]
```

if no module given, default is "command" so this implicitly works

```
ansible 3.3.3.1 -a 'ls /var/log/*'
```



