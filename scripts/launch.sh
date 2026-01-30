#!/bin/bash

# Use script dir so profile is always the same regardless of CWD (keeps login state)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

PROFILE_DIR="$PROJECT_ROOT/profiles/agent"

# Load PORT and CHROME from .env (create from .env.example if missing)
if [[ -f "$PROJECT_ROOT/.env" ]]; then
  set -a
  # shellcheck source=/dev/null
  source "$PROJECT_ROOT/.env"
  set +a
fi
: "${PORT:=9222}"
: "${CHROME:=/opt/google/chrome/chrome}"

PID_FILE="$PROJECT_ROOT/chrome.pid"

cleanup() {
  if [[ -f "$PID_FILE" ]]; then
    CHROME_PID=$(cat "$PID_FILE")
    kill "$CHROME_PID" 2>/dev/null || true
    rm -f "$PID_FILE"
  fi
}
trap cleanup EXIT

"$CHROME" \
  --remote-debugging-port="$PORT" \
  --no-first-run \
  --no-default-browser-check \
  --user-data-dir="$PROFILE_DIR" \
  "about:blank" &
echo "$!" > "$PID_FILE"

# Stop an hour for manual operation, like: login some accounts, test etc.
sleep 3600
