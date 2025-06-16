mkdir -p /etc/systemd/resolved.conf.d/
chmod 755 /etc/systemd/resolved.conf.d/
printf "[Resolve]\nDNSStubListener=no\n" > /etc/systemd/resolved.conf.d/noresolved.conf
systemctl restart systemd-resolved.service
cat /etc/resolv.conf
