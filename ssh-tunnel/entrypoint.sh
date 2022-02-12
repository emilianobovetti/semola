#!/usr/bin/env sh

if [ ! -f ~/.ssh/id_ed25519 ]; then
  echo "Missing SSH private key" 1>&2
  echo "You may want to run something like this:" 1>&2
  echo "ssh-keygen -t ed25519 -C me@mail.example" 1>&2
  exit 1
fi

ssh -tt -p 6805 \
  -o "ExitOnForwardFailure yes" \
  -o "ServerAliveInterval 60" \
  -o "ServerAliveCountMax 2" \
  -R 2281:homeassistant:8123 \
  semola@tno.sh
