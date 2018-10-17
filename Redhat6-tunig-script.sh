#! /bin/bash
# varibale
New_hostname=REDHAT6-00
Service_On=$( chkconfig --list | grep 3:marche | wc -l )
Installed_Package="yum list installed"
#List of khown unwanted service
List_Of_Unwanted_Svc="cups postfix bluetooth "

function Stop_and_Disable_Unwated_Svc () {
Services=$1
for svc in $List_Of_Unwanted_Svc
	do 
	service $svc stop 
	chkconfig $svc off --level 3 
	done


}

# list intalled package
echo "$Installed_Package Installed Package"


# change the hoste name 
sed -i "s/HOSTNAME=.*/HOSTNAME=$New_hostname/g" /etc/sysconfig/network && cat /etc/sysconfig/network
echo "$New_hostname" > /proc/sys/kernel/hostname 

#netstat -tulpn
#service stop postfix

# change run level 
cp /etc/inittab /etc/inittab.orig
sed -i "s/id:5/id:3/g"  /etc/inittab && cat /etc/inittab 

# display runlevel runlevel
runlevel
# list the service on diffrent runlevel
echo " $SErvice_On activée "
 
# Memory Tunig
free -m
service --status-all
service --status-all | grep runing

# tuning Motd 
#echo -en "\033[1;31m" > /etc/motd 
#
#echo "                                      _____                          " 
#echo "                               _.+sd666666666bs+._                   " 
#echo "                           .+d666666666666666666666b+.               " 
#echo "                        .sd6666666P^*^T666P^*"*^T66666bs.            " 
#echo "                      .s66666666P*     `* _._  `T6666666s.          " 
#echo "                    .s666666666P          ` :6;   T66666666s.        " 
#echo "                   s6666666666;  db..+s.   `**    T666666666s       " 
#echo "                 .666666666666  `T6P*             T6666666666.     " 
#echo "                .666666666666P                       T6666666666.    " 
#echo "               .6666666666666b                       `66666666666.   " 
#echo "              :666666666666666.                       T66666666666;  " 
#echo "              666666666P^* :66b.                     d666666666666  " 
#echo "             :6666666P      T6666bs._               :P`*^T6666666; " 
#echo "             6666666P         `*T66666b                    `T666666 " 
#echo "            :6666666b            `*T666s                      :66666;" 
#echo "            :66666666b.                                        66666;" 
#echo "            66666666666b.                                     :666666" 
#echo "            6666666666666bs.                                 .6666666" 
#echo "            66666666666666666bs.                           .d66666666" 
#echo "            :6666666666666P*"*T66bs,._                  .sd666666666;" 
#echo "            :666666666666P     TP^**T6bss++.._____..++sd666666666666;" 
#echo "             666666666666b           `T66666666666666666666666666666 " 
#echo "             :666666666666b.           `*T66P^*"*"*^^*T666666666666; " 
#echo "              666b       `T6b+                        :6666666BUG66  " 
#echo "              :6P         `"               ,._.     ;66666666666;  " 
#echo "               \                            `*TP*     d66P*******6   " 
#echo "                \                                    :66P      /    " 
#echo "                 \                                  :dP       /     " 
#echo "                  `.                               d6P       .      " 
#echo "                    `.                             `      .        " 
#echo "                      `-.                               .-          " 
#echo "                         `-.                         .-             " 
#echo "                            `*+-._             _.-+*                " 
#echo "                                  `"*-------*"                  " 
# echo -en "\033[0m" >> /etc/motd
#


####################         CENTOS             ########################
    1  ifconfig
    2  ifconfig eth0 up 
    3  ifconfig eth1 up 
    4  ifconfig -a
    5  /etc/init.d/network restart
    6  ifconfig -a
    7  ifconfig 
    8  vim /etc/udev/rules.d/98-kexec.rules 
    9  ifconfig 
   10  dmesg
   11  dmesg | grep eth
   12  dmesg | grep netw
   13  dmesg | grep net
   14  ifconfig
   15  ifconfig eth0 up 
   16  ifconfig eth1 up  
   17  vim /etc/sysconfig/network-scripts/ifcfg-eth0
   18  ifup eth0
   19  /etc/init.d/network restart
   20  systemctl status network.service
   21  ifup eth0
   22  vim /etc/sysconfig/network-scripts/ifcfg-eth0
   23  ifup eth0
   24  ifup eth1
   25  cp /etc/sysconfig/network-scripts/ifcfg-eth0 /etc/sysconfig/network-scripts/ifcfg-eth1
   26  ifup eth1
   27  vim /etc/sysconfig/network-scripts/ifcfg-eth0
   28  init 6 
   29  dmesg | more
   30  ifup eth1
   31  lspci
   32  rpm -nvh '/run/media/heddar/21/NV_Linux_DRV_PKG_v1.23/RHEL5/rpm/nvsata-rhel5-2.1-1.23.x86_64.rpm' 
   33  rpm -ivh '/run/media/heddar/21/NV_Linux_DRV_PKG_v1.23/RHEL5/rpm/nvsata-rhel5-2.1-1.23.x86_64.rpm' 
   34  lsmod
   35  init 6
   36  cd /etc/modprobe.d/
   37  ls
   38  cd /etc/modules-load.d/
   39  ls
   40  chkconfig sshd --level 345 on 
   41  chkconfig 
   42  systemctl enable sshd.service
   43  chkconfig 
   44  systemctl 
   45  systemctl :q!
   46  systemctl | grep sshd
   47  man systemctl 
   48  cat /etc/rc.modules 
   49  modprobe /lib/modules/3.10.0-123.el7.x86_64/extforcedeth.ko 
   50  cat /lib/modules/3.10.0-123.el7.x86_64/extra/forcedeth/forcedeth.ko 
   51  cat /etc/rc.modules 
   52  echo modprobe forcedeth 
   53  cat /etc/rc.modules 
   54  init 6 
   55  ifconfig 
   56  ifconfig -a
   57  lspci
   58  lsmod | grep nv
   59  lsmod | grep 
   60  lsmod | grep n
   61  lsmod | grep eth
   62  lsmod | grep et
   63  cd /lib/modules/3.10.0-123.el7.x86_64/kernel/net/netlink/
   64  ls
   65  rpm -ivh /run/media/heddar/21/NV_Linux_DRV_PKG_v1.23/RHEL5/rpm/nvsata-rhel5-2.1-1.23.x86_64.rpm
   66  rpm -q nvsata
   67  rpm -q | less 
   68  rpm -a
   69  rpm -q
   70  rpm -l
   71  rpm 
   72  rpm --list
   73  rpm -qa
   74  rpm -qa | grep nv
   75  modeprod
   76  modeprobe
   77  modeprob
   78  modprobe
   79  modprobe 
   80  modprobe -h
   81  modprobe -a
   82  modprobe -h | less
   83  modprobe -v nvsata
   84  modprobe -v nvs
   85  grep -r "nvsata" /
   86  grep -r "nvsata" /lib
   87  find /lib -iname "*nvsata*"
   88  find / -iname "*nvsata*"
   89  find / -iname "*nvlan*"
   90  rpm -ivh /run/media/heddar/21/NV_Linux_DRV_PKG_v1.23/RHEL5/rpm/nvlan-rhel5-0.62-1.23.x86_64.rpm
   91  find / -iname "*nvlan*"
   92  find /lib -iname "*nvlan*"
   93  cd /lib/modules/3.10.0-123.el7.x86_64/kernel/net/netlink/
   94  ls
   95  cat q
   96  cat .q
   97  ls
   98  ls -l 
   99  cat q
  100  less q
  101  less netlink_diag.ko 
  102  less "q"
  103  /sbin/insmod  /lib/modules/3.10.0-123.el7.x86_64/modules.networking/q
  104  /sbin/insmod  /lib/modules/3.10.0-123.el7.x86_64/modules.networking/
  105  ifconfig
  106  ifconfig -a
  107  rpm -ivh '/run/media/heddar/21/NV_Linux_DRV_PKG_v1.23/RHEL5/rpm/nvlan-rhel5-0.62-1.23.x86_64.rpm' 
  108  cp   /lib/modules/2.6.18-8.el5/kernel/drivers/net/forcedeth.ko 
  109  /sbin/insmod  /lib/modules/2.6.18-8.el5/kernel/drivers/net/
  110  mkdir -p  /lib/modules/3.10.0-123.el7.x86_64/kernel/drivers/net/
  111  cp '/home/heddar/Bureau/forcedeth.ko'   /lib/modules/3.10.0-123.el7.x86_64/kernel/drivers/net/
  112  insmod   /lib/modules/3.10.0-123.el7.x86_64/kernel/drivers/net/forcedeth.ko 
  113  cd  /
  114  make '/run/media/heddar/21/NV_Linux_DRV_PKG_v1.23/RHEL5/source/forcedeth.c' 
  115  cat  '/run/media/heddar/21/NV_Linux_DRV_PKG_v1.23/RHEL5/source/forcedeth.c' 
  116  cat  '/run/media/heddar/21/NV_Linux_DRV_PKG_v1.23/RHEL5/source/forcedeth.c' | less 
  117  make  '/run/media/heddar/21/NV_Linux_DRV_PKG_v1.23/RHEL5/source/forcedeth.c' 
  118  ls
  119  cd /root/
  120  make  '/run/media/heddar/21/NV_Linux_DRV_PKG_v1.23/RHEL5/source/forcedeth.c' 
  121  gcc -o forcedeth.ko  '/run/media/heddar/21/NV_Linux_DRV_PKG_v1.23/RHEL5/source/forcedeth.c' 
  122  rpm -ivh '/run/media/heddar/21/kmod-forcedeth-0.64-1.el7.elrepo.x86_64.rpm' 
  123  insmod /lib/modules/3.10.0-123.el7.x86_64/extra/forcedeth/forcedeth.ko 
  124  ifconfig -a
  125  vim /etc/sysconfig/network-scripts/ifcfg-eth0 
  126  /etc/init.d/network restart
  127  ifconfig 
  128  /etc/init.d/network restart
  129  ifconfig 
  130  ping google.fr 
  131  ssh 192.168.0.32
  132  yum search openssh
  133  yum install openssh-server
  134  yum install openssh-server.x86_64 
  135  kill -9 14527
  136  yum install openssh-server.x86_64 
  137  chkconfig
  138  chkconfig sshd --level 345 up 
  139  chkconfig sshd --level 345 on 
  140  chkconfig
  141  service opensshd start 
  142  ps -aux | grep ssh 
  143  service openssh start
  144  systemctl start sshd
  145  ps -aux | grep ssh 
  146  ssh 192.168.0.32
  147  ifconfig 
  148  vim /etc/udev/rules.d/98-kexec.rules 
  149  vim /etc/udev/udev.conf 
  150  vim /etc/inittab 
  151  systemctl list-units --type=target
  152  systemctl set-default multi-user.target
  153  systemctl get-default 
  154  reboot
  155  systemctl get-default 
  156  ls /usr/lib/systemd/system/*.target
  157  cat /usr/lib/systemd/system/default.target 
  158  systemctl status NetworkManager.service
  159  nmcli dev status
  160  vim /etc/sysconfig/network-scripts/ifcfg-Ethernet_automatique 
  161  cp /etc/sysconfig/network-scripts/ifcfg-Ethernet_automatique /etc/sysconfig/network-scripts/ifcfg-eth1
  162  cat /etc/sysconfig/network-scripts/ifcfg-eth0 >> /etc/sysconfig/network-scripts/ifcfg-eth1
  163  vim  /etc/sysconfig/network-scripts/ifcfg-eth1
  164  cp  /etc/sysconfig/network-scripts/ifcfg-eth1 /etc/sysconfig/network-scripts/ifcfg-enp0s15
  165  rm -v   /etc/sysconfig/network-scripts/ifcfg-eth1 
  166  rm -v   /etc/sysconfig/network-scripts/ifcfg-eth0 
  167  systemctl restart network.service 
  168  ip add 
  169  cp  -v /etc/sysconfig/network-scripts/ifcfg-Ethernet_automatique /root
  170  rm  /etc/sysconfig/network-scripts/ifcfg-Ethernet_automatique 
  171  systemctl restart network.service 
  172  ip add 
  173  cat  /etc/sysconfig/network-scripts/ifcfg-Ethernet_automatique
  174  cat  /etc/sysconfig/network-scripts/ifcfg-enp0s15 
  175  systemctl restart network.service 
  176  journalctl -xn 
  177  nmcli dev status
  178  reboot 
  179  nmcli dev status
  180  ifconfig 
  181  ifconfig -a
  182  nmcli dev status
  183  journalctl -xn 
  184  nmcli dev status
  185  lsusb
  186  lsmod
  187  lspci
  188  wget http://support.3com.com/infodeli/tools/nic/linux/3c90x-1.0.0i.tar.gz
  189  wget ftp://ftp.3com.com/pub/nic/linux/install.txt
  190  tar -xzfv 3c90x-1.0.0i.tar.gz 
  191  tar -xzvf 3c90x-1.0.0i.tar.gz 
  192  ls 
  193  ls -l 
  194  tar -xzf 3c90x-1.0.0i.tar.gz 
  195  type  3c90x-1.0.0i.tar.gz 
  196  file  3c90x-1.0.0i.tar.gz 
  197  zcat 3c90x-1.0.0i.tar.gz 
  198  tar x  3c90x-1.0.0i.tar.gz 
  199  tar xv  3c90x-1.0.0i.tar.gz 
  200  tar -xv  3c90x-1.0.0i.tar.gz 
  201  tar -xvf  3c90x-1.0.0i.tar.gz 
  202  ungiz  3c90x-1.0.0i.tar.gz 
  203  unzip  3c90x-1.0.0i.tar.gz 
  204  wget http://support.3com.com/infodeli/tools/nic/linux/3c90x-102.tar.gz
  205  wget ftp://ftp.3com.com/pub/nic/linux/102readme.1st
  206  ls
  207  tar -xzvf 3c90x-102.tar.gz 
  208  tar -xvf 3c90x-102.tar.gz 
  209  cat 3c90x-102.tar.gz 
  210  rm 3c90x-1*
  211  wget ftp://ftp.nnz.ru/pub/drivers/nic/3com 3c90x/3c90x-linux/3c90x-102.tar.gz
  212  wget "ftp://ftp.nnz.ru/pub/drivers/nic/3com 3c90x/3c90x-linux/3c90x-102.tar.gz"
  213  tar -x 3c90x-102.tar.gz 
  214  tar -xzvf 3c90x-102.tar.gz 
  215  cd 3c90x-102/
  216  ls
  217  cat readme 
  218  yum install gcc
  219  gcc -c 3c90x.c -O2 -Wall -Wstrict-prototypes -fomit-frame-pointer        -I/lib/modules/$(uname -r)/build/include \ 
  220         -fno-strength-reduce -pipe -m486 -malign-loops=2        -malign-jumps=2 -malign-functions=2 -DCPU=486        -DMODULE -D__KERNEL__ 
  221    gcc -c 3c90x.c -O2 -Wall -Wstrict-prototypes -fomit-frame-pointer        -I/lib/modules/$(uname -r)/build/include \ 
  222         -fno-strength-reduce -pipe -m486 -malign-loops=2        -malign-jumps=2 -malign-functions=2 -DCPU=486        -DMODULE -D__KERNEL__ 
  223  vim commande 
  224  cat commande 
  225  gcc -c 3c90x.c -O2 -Wall -Wstrict-prototypes -fomit-frame-pointer -I/lib/modules/$(uname -r)/build/include -fno-strength-reduce -pipe -m486 -malign-loops=2  -malign-jumps=2 -malign-functions=2 -DCPU=486 -DMODULE -D__KERNEL__
  226  gcc -c 3c90x.c -O2 -Wall -Wstrict-prototypes -fomit-frame-pointer -I/lib/modules/$(uname -r)/build/include -fno-strength-reduce -pipe  -malign-loops=2  -malign-jumps=2 -malign-functions=2 -DCPU=486 -DMODULE -D__KERNEL__
  227  gcc -c 3c90x.c -O2 -Wall -Wstrict-prototypes -fomit-frame-pointer -I/lib/modules/$(uname -r)/build/include -fno-strength-reduce -pipe  -falign-loops=2  -malign-jumps=2 -falign-loops=2 -DCPU=486 -DMODULE -D__KERNEL__
  228  gcc -c 3c90x.c -O2 -Wall -Wstrict-prototypes -fomit-frame-pointer -I/lib/modules/$(uname -r)/build/include -fno-strength-reduce -pipe  -falign-loops=2  -DCPU=486 -DMODULE -D__KERNEL__
  229  ls
  230  cd ..
  231  wget " ftp://78.46.141.148/mirrors/ftp.mdscene.net/ftp.univap.br/CD_Rec_HDs_e_Outros/Drivers/Linux/Placas de Rede 3COM/S_rie 3C996 - Kernel Red Hat/3c90x-102.tar.gz"
  232  wget "ftp://78.46.141.148/mirrors/ftp.mdscene.net/ftp.univap.br/CD_Rec_HDs_e_Outros/Drivers/Linux/Placas de Rede 3COM/S_rie 3C996 - Kernel Red Hat/3c90x-102.tar.gz"
  233  tar -xzvf 3c90x-102.tar.gz.1 
  234  cd 3c90x-102/
  235  ls
  236  cd ..
  237  rm -fr 3c90x-102/
  238  ls
  239  tar -xzvf 3c90x-102.tar.gz.1 
  240  cd 3c90x-102/
  241  ls
  242  cat compile_UP
  243  cat install3c90x 
  244  less readme 
  245  ls -l 
  246  ./compile_UP 
  247  ./compile_SMP 
  248  grep -r "-m48"
  249  grep -r "-m48" *
  250  vim compile_UP 
  251  ./compile_UP 
  252  ls
  253  cat 3c90x.h 
  254  ./compile_UP 
  255  grep -r "config.h" *
  256  vim 3c90x.h 
  257  touch /usr/src/linux/include/linux/config.h
  258  echo  "" >  /usr/src/linux/include/
  259  vim 3c90x.h 
  260  ./compile_UP 
  261  vim 3c90x.h 
  262  ./compile_UP 
  263  vim 3c90x.h 
  264  ./compile_UP 
  265  vim 3c90x.h 
  266  ./compile_UP 
  267  vim 3c90x.h 
  268  ./compile_UP 
  269  vim 3c90x.h 
  270  ./compile_UP 
  271  vim 3c90x.h 
  272  ./compile_UP 
  273  vim 3c90x.h 
  274  ./compile_UP 
  275  vim 3c90x.h 
  276  ./compile_UP 
  277  vim 3c90x.h 
  278  ./compile_UP 
  279  vim 3c90x.h 
  280  ./compile_UP 
  281  vim 3c90x.h 
  282  ./compile_UP 
  283  ls
  284  wget ftp://ftp.pbone.net/mirror/ftp.pld-linux.org/dists/ra/PLD/i386/PLD/RPMS/kernel-smp-net-3c90x-1.0.2-6@2.2.22_6.i386.rpm
  285  rpm -ivh kernel-smp-net-3c90x-1.0.2-6@2.2.22_6.i386.rpm 
  286  wget ftp://ftp.pbone.net/mirror/ftp.gwdg.de/pub/linux/misc/suser-scorot/suse92/RPMS/x86_64/pearpc-0.3.1-3.x86_64.rpm
  287  rpm -ivh pearpc-0.3.1-3.x86_64.rpm
  288  yum search libstc
  289  yum search libstc++
  290  yum search libstdc++
  291  yum install libstdc++.x86_64
  292  rpm -ivh pearpc-0.3.1-3.x86_64.rpm 
  293  yum install libstdc++
  294  yum remove  libstc++
  295  yum remove  libstc++.x86_64
  296  yum remove   libstdc++.x86_64
  297  yum install    libstdc++.x86_64
  298  yum remove  libstdc++.x86_64
  299  ifconfig 
  300  vim /etc/hostname 
  301  hostname
  302  hostname -h
  303  hostname -F /etc/hostname 
  304  hostname 
  305  cat  /proc/sys/kernel/hostname 
  306  hostname >   /proc/sys/kernel/hostname 
  307  cd  /lib/modules/2.6.18-8.el5/
  308  ls
  309  cd kernel/
  310  ls
  311  cd drivers/net/
  312  ls
  313  cd ..
  314  ls
  315  cd ..
  316  ls
  317  rm -fr 2.6.18-8.el5/ 
  318  cat /etc/redhat-release 
  319  cat /etc/issue
  320  cat /etc/issue.net 
  321  /etc/init.d/network  restart
  322  passwd heddar 
  323  passwd root
  324  visudo 
  325  vim /etc/bashrc 
  326  source /etc/bashrc 
  327  Rootit56source /etc/bashrc 
  328  vim /etc/ssh/sshd_config 
  329  systemctl reload sshd.service 
  330  fdisk -l 
  331  vim /etc/fstab 
  332  cd /media/
  333  mkdir  backup 
  334  vim /etc/fstab 
  335  vim /etc/fstab 
  336  reboot 
  337  ip addr
  338  ip addr enp0s15 up 
  339  ip addr enp0s15 
  340  cp -v  /root/ifcfg-Ethernet_automatique /etc/sysconfig/network-scripts/
  341  rm  /etc/sysconfig/network-scripts/ifcfg-enp0s15 
  342  systemctl restart network.service
  343  ifconfig 
  344  ping google.fr
  345  df -h 
  346  yum search apache 
  347  yum search  httpd
  348  #yum -y  install   httpd 
  349  history 

