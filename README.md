# w00t-servers.net

Instructions (Ubuntu 24.04):

1. Free up port 53 by running `sh disable-systemd-resolver.sh`
2. Set up dnsdist:
    - `apt-get install dnsdist`
    - Copy `dnsdist.conf` to `/etc/dnsdist/dnsdist.conf`
    - Adjust second argument of `carbonServer()`
    - Restart dnsdist: `service dnsdist restart`
3. In a `screen`, run `sh capture.sh`. This will store up to 10G of DNS traffic in /tmp/.

Traffic statistics are available at https://metronome.powerdns.com/?server=dnsdist.desec-w00t-a.main&beginTime=-3600 (or similar, depending on step 2).
