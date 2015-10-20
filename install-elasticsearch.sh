#!/bin/sh

VMAJOR=1
VMINOR=1
VBUG=1

PKGNAME=elasticsearch-${VMAJOR}.${VMINOR}.${VBUG}

#if [ ! -f ${PKGNAME}.tar.gz ]; then
#    curl -O https://download.elasticsearch.org/elasticsearch/elasticsearch/${PKGNAME}.tar.gz
#fi

#tar -xzf ${PKGNAME}.tar.gz
mv ${PKGNAME} elasticsearch
