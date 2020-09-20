#!/bin/sh
set -e

bundle update
exec jekyll serve -H 0.0.0.0 "$@"
