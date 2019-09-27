#!/bin/sh
# Used it for a testing purpose in th692
# Use this caution. It's infinite loop.
a=10
until [ $a -lt 10 ]
do
  now=$(date +%k%M)
  cur="1830" # Specify time you want.
  if [ $now -eq $cur ]
  then
    touch /root/Rebooted
    reboot
  else
    echo Not goona reboot fow now waiting time hits 1830
fi
done

