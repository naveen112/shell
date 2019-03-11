!/bin/sh
apt-get install python
cd /boardfarm/tests
for f in *.py; do python "$f"; done
apt-get install jmeter -y
cd /boardfarm/tests/jmeter
for f in *.jmx; do  jmeter -n -t "$f"; done
cd /boardfarm/tests/lib
for f in *.py; do python "$f"; done
apt-get install tcl8.4
tclsh mta_conf_Proc.tcl
cd /boardfarm/tests/lib/scripts
sh openvpn-install.sh
