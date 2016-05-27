#! /bin/bash

# Since these are built by hub.docker.com, no need to build locally anymore
# but as a backup if they cannot be pulled then create locally
#

docker pull rickalm/centos7:base ||
  ( echo Building rickalm/centos7:base locally && 
    docker build -f Dockerfile.centos7:base -t rickalm/centos7:base . )

docker pull rickalm/centos7:dind-systemd || 
  ( echo Building rickalm/centos7:dind-systemd locally && 
    docker build -f Dockerfile.centos7:dind-systemd -t rickalm/centos7:dind-systemd . )

docker pull rickalm/centos7:systemd-dind ||
  ( echo Building rickalm/centos7:systemd-dind locally && 
    docker build -f Dockerfile.centos7:systemd-dind -t rickalm/centos7:systemd-dind . )
