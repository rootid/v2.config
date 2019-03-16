#!/bin/sh

#sudo perl -pi -e "s,^200.*\n$,," /etc/hosts
sudo sed -i -e "/0.0.0.0/d" /etc/hosts
