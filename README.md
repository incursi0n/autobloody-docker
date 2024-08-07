# autobloody-docker
`autobloody-docker` is a dockerised installation of `autobloody` which is a tool to automatically exploit Active Directory privilege escalation paths shown by BloodHound.

## Description
This docker uses tools like [bloodyAD](https://github.com/CravateRouge/bloodyAD) and [autobloody](https://github.com/CravateRouge/autobloody) by [CravateRouge](https://github.com/CravateRouge)
### Dependencies
On your host Linux box, install [BloodHound](https://github.com/BloodHoundAD/BloodHound):
```ps1
# Debian/Ubuntu/Kali
sudo apt update && sudo apt install -y bloodhound
```
## Installation
```ps1
# Debian/Ubuntu/Kali
chmod +x start.sh
sudo ./start.sh
```
## How to use it
First data must be imported into BloodHound after running `start.sh`

Simple usage:
```ps1
autobloody -u john.doe -p 'Password123!' --host 192.168.10.2 -dp 'adminadmin' -ds 'JOHN.DOE@BLOODY.LOCAL' -dt 'BLOODY.LOCAL'
```


