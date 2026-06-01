# w00t-servers.net

Instructions (Ubuntu 24.04):

1. Free up port 53 by running `sh disable-systemd-resolver.sh`
2. Run the Docker Compose application

dnstap caputures captures will be written to `./dnstap-spool`.
