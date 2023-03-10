#!/bin/bash
# station20
sudo -i

groupadd -g 2000 devop 
useradd -m -G devop -s /bin/bash srvadmin
echo "work" | passwd --stdin srvadmin
cat << END > /etc/sudoers.d/srvadmin
srvadmin ALL=(ALL) NOPASSWD: ALL
END

useradd -m -G devop -s /bin/bash devuser
echo "work" | passwd --stdin devuser
su - devuser
mkdir myapp
cd myapp
echo "datafile1" > datafile1
echo "datafile1" > datafile2
echo "datafile3" > datafile3
cat << END > start.sh 
date
echo datafile*
END
exit
userdel devuser

mkdir -p /opt/{myapp,myapi,rh}
cd /opt/myapi
echo "datafile1" > datafile1
echo "datafile1" > datafile2
echo "datafile3" > datafile3
cat << END > start.sh 
date
echo datafile*
END

chown -R srvadmin.devop /opt
chown -R root.root /opt/rh



useradd -s /bin/bash -m appadmin
cp -r /opt/myapp ~appadmin/
chown -R appadmin.appadmin ~appadmin
userdel appadmin

exit




