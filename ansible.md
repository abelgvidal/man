Ansible
===============

Example host

```
front 10.0.0.2
backend 10.0.0.3

[appserver]
front enviromentvariableofyourchoice=front
back enviromentvariableofyourchoice=back

[appserver:vars]
envvariableforappgroup=prod
enviromentvariableofyourchoice=valueWillBeOverridenBecauseIsDefinedInTheSameHost
```

simple command

```
ansible [3.3.3.1 or namemachine or all] - m module -a 'ls /var/log/*' [--become] [--become-user]
```

if no module given, default is "command" so this implicitly works

```
ansible 3.3.3.1 -a 'ls /var/log/*'
```



