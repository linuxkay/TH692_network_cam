# TH692_network_cam

## Category

Network camera information

## Description

Just some useful notes for TH692 cam.


## Demo in Animation

## Overview

Setting up crond in TH692 network camera.

## Requirements

First of all, you need to access TH692 by telent. 

In linux

apt or use dnf to install 'telnet


## Install

## Usage

then 

`telnet 192.168.XXX.XXX`

login name for telnet is root

password is cat1029


if it does not work, then try Mroot or Wproot for the usernmae. 


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

Credits to https://eng-entrance.com/linux_startup

inside `S92cron`

just put

`/usr/sbin/crond &`

then put whatever the command you like using 

`crontab -e`


## Memo

Mmemo for myself

Try not to use reboot.sh

It's hackey way

# Reboot from http request

Access to http://192.168.0.100/cgi-bin/hi3510/reboot.cgi

That's it

## Updates

## Licence
[MIT]

## Author

[linuxkay](https://github.com/linuxkay)
