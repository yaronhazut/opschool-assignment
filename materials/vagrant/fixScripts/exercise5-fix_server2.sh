#!/bin/bash
#add fix to exercise5-server2 here
su vagrant -c "cat /vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys"
cp /vagrant/.ssh/id_rsa* /home/vagrant/.ssh/
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa*
echo -e "Host server1" '\n' '\t' ""StrictHostKeyChecking no"" >> /home/vagrant/.ssh/config
