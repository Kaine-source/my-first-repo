#!/usr/bin/env bash
set -e

echo "Running sample pytest tests..."

# If pytest is present, run it. If not, exit 0 so CI doesn't fail unexpectedly.
if command -v pytest >/dev/null 2>&1; then
  pytest -q
else
  echo "pytest not found — skipping tests"
  exit 0
fi
