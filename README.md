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

## Reboot TH692 by sending/accessing http request

Access to http://192.168.0.100/cgi-bin/hi3510/reboot.cgi

That's it

## HTTP vs RTSP
Although http access is easier to access camera stream, highly recommend RTSP since it can provide smooth video stream. 
A downside of RTSP is using VLC or other rtsp supported player can display video stream but it delays 5-6 seconds compare to http video stream.
Use following command to solve the rtsp delay.

`  ffplay -rtsp_transport udp -fflags nobuffer -flags low_delay -framedrop -analyzeduration 0 -an -vf "scale=1280x780" rtsp://192.168.1.100:554/13
`

options and opinions. 

`-rtsp_transport udp -fflags nobuffer -flags low_delay -framedrop` helped improving speed. 

`-analyzeduration 0` helped giving stable smooth stream in long term. 

`-an` helped more smooth video stream with improved video quality.

by using above command, it gives you smooth video stream without any delay. also found out that ping reply is way faster when you open stream via above command compare to http.
ping reply time on rtsp 6ms to 11ms. ping reply time when accessing via http is 600ms 1200ms.


## Updates

2025/03/21 Added the smooth way to see camera stream using RTSP.

2021/07/10 Changed TH692 IP to 192.168.1.100 (Had to create WiFi hot spot IP 192.168.0.1/24)
           Synched Time for TH692 via setTimeforCAM.sh in Pi3B+

## Licence
[MIT]

## Author

[linuxkay](https://github.com/linuxkay)
