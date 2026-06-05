#!/bin/sh
set -eu

: "${RSYNC_DEST:?RSYNC_DEST is required}"
: "${INTERVAL_SECONDS:?INTERVAL_SECONDS is required}"

cd /spool/dnstap

while true; do
  tmpfile="$(mktemp)"

  ls -1 *.fstrm 2>/dev/null \
    | sort \
    | head -n -2 \
    > "$tmpfile" || true

  if [ -s "$tmpfile" ]; then
    rsync -avz \
      --remove-source-files \
      -e 'ssh -o BatchMode=yes -o StrictHostKeyChecking=accept-new' \
      --files-from="$tmpfile" \
      ./ \
      "$RSYNC_DEST"
  fi

  rm -f "$tmpfile"
  sleep "$INTERVAL_SECONDS"
done
