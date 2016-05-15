# ![ansible](media/ansible.png)

Ansible
===============

## Table of content

- [Inventories](#Inventories)
- [Running modules in command line](#running-modules-in-command-line)
- [Playbooks](#Playbooks)
    - [Including files](#including-files)
    - [Roles](#roles)

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

and then you can use it in the included files

```
{{ wp_user }}
```

Includes can be also used in handlers

```
handlers:
  - include: handlers/handlers.yml
```

and

```
# this might be in a file like handlers/handlers.yml
- name: restart apache
  service: name=apache state=restarted

```

or includes can compose a playbook in several playbooks

```
- name: this is a play at the top level of a file
  hosts: all
  remote_user: root

  tasks:

  - name: say hi
    tags: foo
    shell: echo "hi..."
- include: load_balancers.yml
- include: webservers.yml
- include: dbservers.yml
```

## Roles

A role is a convention to include files in a structured way. This is the layout of a role.

```
   common/
     files/
     templates/
     tasks/
     handlers/
     vars/
     defaults/
     meta/
```

It would be included in a playbook like this:

```
---
- hosts: webservers
  roles:
     - common
```

This designates this behaviour:

* If roles/x/tasks/main.yml exists, tasks listed therein will be added to the play
* If roles/x/handlers/main.yml exists, handlers listed therein will be added to the play
* If roles/x/vars/main.yml exists, variables listed therein will be added to the play
* If roles/x/meta/main.yml exists, any role dependencies listed therein will be added to the list of roles (1.3 and later)
* Any copy, script, template or include tasks (in the role) can reference files in roles/x/{files,templates,tasks}/ (dir depends on task) without having to path them relatively or absolutely

You may also pass params to a role like this

```
---

- hosts: webservers
  roles:
    - common
    - { role: foo_app_instance, dir: '/opt/a',  app_port: 5000 }
    - { role: foo_app_instance, dir: '/opt/b',  app_port: 5001 }
```

and you can apply it under a certain condition

```
---
- hosts: webservers
  roles:
    - { role: some_role, when: "ansible_os_family == 'RedHat'" }
```

If you want to define certain tasks to happen before AND after roles are applied, you can do this:


```
---

- hosts: webservers

  pre_tasks:
    - shell: echo 'hello'

  roles:
    - { role: some_role }

  tasks:
    - shell: echo 'still busy'

  post_tasks:
    - shell: echo 'goodbye'
```

Dependencies are expressed in roles/myapp/meta/main.yml :


```
---
dependencies:
  - { role: common, some_parameter: 3 }
  - { role: apache, appache_port: 80 }
  - { role: postgres, dbname: blarg, other_parameter: 12 }
```

