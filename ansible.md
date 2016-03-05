Ansible
===============

simple command

```
ansible [3.3.3.1 or namemachine or all] - m module -a 'ls /var/log/*' [--become] [--become-user]
```

if no module given, default is "command" so this implicitly works

```
ansible 3.3.3.1 -a 'ls /var/log/*'
```



