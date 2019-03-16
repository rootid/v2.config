#!/bin/sh

dns_file=$HOME/v2.config/config/focus_dns.lst

while read line
do
 echo $line | sudo tee -a /etc/hosts
done < $dns_file
