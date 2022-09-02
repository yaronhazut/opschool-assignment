#!/bin/bash
#add fix to exercise5-server1 here
su vagrant -c "ssh-keygen -t rsa -N '""' -f /home/vagrant/.ssh/id_rsa"
cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
cp /home/vagrant/.ssh/id_rsa* /vagrant/.ssh/
echo -e "Host server2" '\n' '\t' ""StrictHostKeyChecking no"" >> /home/vagrant/.ssh/config
