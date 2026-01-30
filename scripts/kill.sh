#!/bin/bash

if [[ -f "./chrome.pid" ]]; then
  CHROME_PID=$(cat "./chrome.pid")
  kill "$CHROME_PID" 2>/dev/null || true
  rm -f "./chrome.pid"
fi