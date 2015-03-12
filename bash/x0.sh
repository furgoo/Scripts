# test script for xepto


yum -y install tmux wget
uname -a > old_default_kernel.txt
tmux new -s "root0"  yum -y update
#
yum install gcc make rpm-build autoconf.noarch zlib-devel pam-devel openssl-devel -y && wget -c wget http://openvpn.net/release/lzo-1.08-4.rf.src.rpm && wget http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm && rpmbuild --rebuild lzo-1.08-4.rf.src.rpm && rpm -Uvh lzo-*.rpm && rpm -Uvh rpmforge-release* && yum -y install openvpn
#
wget -c http://openvpn.net/release/lzo-1.08-4.rf.src.rpm && wget http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm && rpmbuild --rebuild lzo-1.08-4.rf.src.rpm && rpm -Uvh lzo-*.rpm && rpm -Uvh rpmforge-release* && yum install openvpn 
#
cp -R /usr/share/doc/openvpn-2.2.2/easy-rsa/ /etc/openvpn/
[root@openvpn ~]# vi /etc/openvpn/easy-rsa/2.0/vars 

