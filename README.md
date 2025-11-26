# Install and setup DevASC VM from base Ubuntu image
## Install Ubuntu VM

Create a Hyper-V VM
 - Gen 2 VM
 - Min 4GB RAM
 - Min 2 CPU

Create user accound `devasc` with password of `Cisco123!`
Set account to autologin without password

## Configure Ubuntu

Run the following commands to update the system and install dependencies

```shell
sudo apt update ; sudo apt upgrade -y ; sudo apt autoremove
sudo apt install openssh-server ansible python3-pip -y
```
## Run Ansible script

Borrowed from https://github.com/epiecs/devasc-vm-setup

Run the following commands to download and run the devasc playbook
```shell
wget https://raw.githubusercontent.com/edgoad/devasc-vm-setup/main/devasc.yaml
ansible-playbook devasc.yaml
```

# Unsure items
Packet Tracer
built in API lab
Other docker images/services
! chromium
! draw.io
ubuntuversion?
default/desktop icons
    ! VSCode
    ! postman
    labs folder
    ! terminal
    ! chromium
    ! draw.io
    ! home folder
    packet tracer
    browser home page
firewall rules




This repository uses a role-based Ansible layout instead of a single large playbook.

How it's organized:
- site.yml - top-level play that composes roles
- roles/common - hostname, common defaults and handlers
- roles/users - groups, sudoers, user-related items
- roles/packages - apt, snap, apt keys, repositories
- roles/desktop - desktop environment, gsettings, shortcuts, VSCode config
- roles/netplan - network configuration (uses template)
- roles/api_simulator - API-SIMULATOR service setup

Run:
- ansible-playbook site.yml -K

Tips:
- Use group_vars/all.yml or pass -e to override defaults like hostname, user_home, ubuntuversion.
- Run portions by tags or by limiting roles: ansible-playbook site.yml --tags "packages" or remove roles you don't want from site.yml temporarily.