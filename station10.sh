#!/bin/bash
# station10

sudo -i
yum install -y elinks
yum remove -y elinks

cp /net/server1/export/netinstall/CENTOS7/Packages/elinks-0.12-0.36.pre6.el7.x86_64.rpm /tmp

groupadd -g 2000 devop 
useradd -m -G devop -s /bin/bash srvadmin
echo "work" | passwd --stdin srvadmin
cat << END > /etc/sudoers.d/srvadmin
srvadmin ALL=(ALL) NOPASSWD: ALL
END

useradd -s /bin/bash -d /home/test -m -k /etc/skel projectadmin
echo "workwork" | passwd --stdin projectadmin

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
cd /opt/myapp
echo "datafile1" > datafile1
echo "datafile1" > datafile2
echo "datafile3" > datafile3
cat << END > start.sh 
date
echo datafile*
END
cd
chown -R srvadmin.devop /opt
chown -R root.root /opt/rh

mkdir -p /opt/app
cd /opt/app
echo "datafile1" > datafile1
echo "datafile1" > datafile2
echo "datafile3" > datafile3
cat << END > app.sh 
date
END
cd


cat << END > /usr/local/bin/loadavg.sh
#!/bin/bash
uptime | tr ',' ' ' | tr -s ' ' | cut -d' ' -f2,10,11,12 >> /var/log/loadavg.log
END

yum -y install httpd
cat << END > /etc/httpd/conf.d/station10.conf
<VirtualHost *:80>
    # This first-listed virtual host is also the default for *:80
    ServerName station10.example.com
    ServerAlias station10 
    DocumentRoot "/var/www/station10"
</VirtualHost>
END

mkdir /var/www/station10
echo "This is station10.example.com" > /var/www/station10/index.html





