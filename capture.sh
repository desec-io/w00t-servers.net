mkdir /var/w00t/
chmod 777 /var/w00t/
tcpdump -w /var/w00t/w00t.pcap -U -C 100 -W 100 -n -i eth0 port 53
