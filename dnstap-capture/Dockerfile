FROM debian:bookworm-slim

RUN apt-get update \
 && apt-get install -y --no-install-recommends fstrm-bin ca-certificates \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["fstrm_capture", \
  "-t", "protobuf:dnstap.Dnstap", \
  "-u", "/run/dnstap/dnsdist.sock", \
  "-w", "/spool/dnstap/dnsdist-%Y%m%d-%H%M%S.fstrm", \
  "--gmtime"]
