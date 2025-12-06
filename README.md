# Install and setup DevASC VM from base Ubuntu image
## Install Ubuntu VM

Create a Hyper-V VM
 - Gen 2 VM
 - Min 4GB RAM
 - Min 2 CPU

## To start:

1. Run the following in PowerShell

```
Invoke-WebRequest "https://raw.githubusercontent.com/edgoad/ITVMs/master/IT385_DevASC/01-MainSetup.ps1" -OutFile $env:TEMP\01-MainSetup.ps1
."$env:Temp\01-MainSetup.ps1"
```

    reboot and rerun the script when prompted

2. Install Ubuntu
    Create user accound `devasc` with password of `Cisco123!`


## Configure Ubuntu

Run the following commands to update the system and install dependencies

```shell
sudo apt update ; sudo apt upgrade -y ; sudo apt autoremove
sudo apt install ansible git -y
git clone https://www.github.com/egoad/devasc-vm-setup.git
```

## Run Ansible script

Borrowed from https://github.com/epiecs/devasc-vm-setup

Run the following commands to download and run the devasc playbook

```shell
ansible-playbook devasc-vm-setup/site.yml
```

## Post automation

1. Make chromium the default browser
2. Set http://library.demo.local as the default browser
3. Confirm keyring isnt prompting for password
4. Confirm VMs are starting at boot


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
    ! labs folder
    ! terminal
    ! chromium
    ! draw.io
    ! home folder
    packet tracer
    browser home page
firewall rules




