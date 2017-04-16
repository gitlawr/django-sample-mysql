#!/bin/bash

ACCT=${ACCT:-lawr}
VERSION=1.0.0

docker build -t $ACCT/django:${VERSION} .
docker push $ACCT/django:${VERSION}

