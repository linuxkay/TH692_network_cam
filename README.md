# TH692_network_cam
just some useful notes for th692 cam.

Setting up crond in Th692 network camera.

First of all, you need to access to TH692 by telent. 


In linux

apt or use dnf to install 'telnet'

then 

`telnet 192.168.XXX.XXX`

login name for telnet is root

password is cat1029


if it does not work, then try Mroot or Proot for the usernmae. 


Once you get into the system,

Welcome to HiLinux prompts

Here you can do whatever you want.

Running Cron?

First start creating cron directory at /var/spool/cron/crontabs/

`mkdir -p /var/spool/cron/crontabs`


cd /etc/init.d

then create file name called

`S92cron`

S stands for start, so anything named start with captial S will start at boot.

inside `S92cron`

just put

`/usr/sbin/crond &`

then put whatever the command you like using 

`crontab -e`

