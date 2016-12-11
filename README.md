# Linux Headers on Scaleway

[![Travis](https://travis-ci.org/mediapop/ansible-scaleway-linux-headers.svg?branch=master)](https://travis-ci.org/mediapop/ansible-scaleway-linux-headers)

`apt-get install linux-headers-generic` won't work on Scaleway because of their custom kernel. This is an ansible 
implementation of 
[How to build a custom kernel module](https://github.com/scaleway/kernel-tools#how-to-build-a-custom-kernel-module)

# Installation

```yml
ansible-galaxy install mediapop.scaleway-linux-headers
```

# Example Playbook

```yml
- hosts: servers
  roles:
    - mediapop.scaleway-linux-headers
```
