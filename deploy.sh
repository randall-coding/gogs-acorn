#!/bin/bash

acorn build -t ghcr.io/randall-coding/acorn/gogs && \
acorn push ghcr.io/randall-coding/acorn/gogs && \
acorn run -n gogs ghcr.io/randall-coding/acorn/gogs