#!/usr/bin/env bash
# Scans dist/, outreach/, research/ for banned patterns.
# Em dashes are the literal unicode char. Uses grep -P where available.

set -u

PATTERN='—|leverage|unlock|empower|revolutionize|disrupt|synergy|at the intersection of|thrilled|excited to|seamless|cutting-edge|innovative|best-in-class|game-changing|mission-critical|transform\b|passionate|proven track record|leading provider|I.d love to|circling back|hope this finds|ecosystem\b|journey\b'

echo "Scanning for banned patterns..."

DIRS=()
for d in dist outreach research; do
  if [ -d "$d" ]; then DIRS+=("$d"); fi
done

if [ ${#DIRS[@]} -eq 0 ]; then
  echo "No target directories present. Nothing to scan."
  exit 0
fi

# CSS property "text-transform" is a known false positive on transform\b. Filter it.
HITS=$(grep -rniE "$PATTERN" "${DIRS[@]}" 2>/dev/null | grep -v 'text-transform' || true)

if [ -n "$HITS" ]; then
  echo "$HITS"
  echo ""
  echo "HITS FOUND. Fix before shipping."
  exit 1
else
  echo "Clean."
fi
