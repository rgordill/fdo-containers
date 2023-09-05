#!/bin/bash

podman run -d --rm -p 8080:8080 \
  -v $PWD/volumes/rendezvous-server.yml:/etc/fdo/rendezvous-server.yml:Z \
  -v $PWD/volumes/keys/manufacturer_cert.pem:/etc/fdo/keys/manufacturer_cert.pem:Z \
  -v $PWD/volumes/stores:/etc/fdo/stores:Z \
  fdo-rendezvous-server
