1. sudo aptitude remove unattended-updates
2. sudo aptitude install vim-gtk xclip
3. set hostname:
```
sudo hostname new-server-name-here
sudo vim /etc/hostname
sudo vim /etc/hosts
```

***
*Problem:* intermittent network fails
```
cd /etc
sudo ln -sf ../run/systemd/resolve/resolv.conf resolv.conf
```

***
*Problem:* all virtual machines copied from the same template have the same IP address
[link](https://jaylacroix.com/fixing-ubuntu-18-04-virtual-machines-that-fight-over-the-same-ip-address)

```
sudo truncate -s 0 /etc/machine-id
sudo rm /var/lib/dbus/machine-id
sudo ln -s /etc/machine-id /var/lib/dbus/machine-id 
````
