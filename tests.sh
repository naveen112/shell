#!/bin/sh
apt install python
cd /opt/boardfarm/tests
for f in *.py; do python "$f"; done
apt install jmeter
cd /opt/boardfarm/tests/jmeter
for f in *.jmx; do  jmeter -n -t "$f"; done
cd /opt/boardfarm/tests/lib
for f in *.py; do python "$f"; done
sudo apt-get install tcl8.4
tclsh mta_conf_Proc.tcl
cd /opt/boardfarm/tests/lib/scripts
sh openvpn-install.sh
