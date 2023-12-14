#!/bin/bash
acorn build -t ghcr.io/randall-coding/acorn/gogs && \
acorn push ghcr.io/randall-coding/acorn/gogs && \
acorn run -n gogs -s gogs-database:gogs-database --memory=1Gi ghcr.io/randall-coding/acorn/gogs