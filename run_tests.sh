#!/usr/bin/env bash
set -e

echo "Running sample pytest tests..."

# Require pytest to be installed so a broken environment can't silently pass.
if command -v pytest >/dev/null 2>&1; then
  pytest -q
else
  echo "pytest not found — install dependencies first (pip install -r requirements.txt)"
  exit 1
fi
