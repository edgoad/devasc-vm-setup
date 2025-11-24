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
    VSCode
    postman
    labs folder
    terminal
    chromium
    draw.io
    home folder
    packet tracer
firewall rules
