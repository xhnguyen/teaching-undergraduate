#!/bin/bash
# Keep the bulky MATH 3850 course material in Dropbox and symlink it into
# this repo.
#
# stinga/ and herzog_f25/ live in Dropbox in full and are linked back as
# whole directories, so nothing under them is tracked by git. nguyen_f26/
# keeps its .tex sources tracked here; only its compiled PDFs are mirrored.
#
# Idempotent and safe to re-run. On a second machine: let Dropbox sync,
# clone the repo, then run this to recreate the links.

set -euo pipefail

DROPBOX_ROOT="${DROPBOX_ROOT:-$HOME/Dropbox}"
DROPBOX="${DROPBOX_TEACHING:-$DROPBOX_ROOT/teaching/math3850}"
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/math3850"

[ -d "$DROPBOX_ROOT" ] || { echo "No Dropbox at $DROPBOX_ROOT (set DROPBOX_ROOT)" >&2; exit 1; }
mkdir -p "$DROPBOX" "$REPO"

# Whole directories: moved to Dropbox, linked back, not tracked by git.
for sub in stinga herzog_f25; do
  if [ -d "$REPO/$sub" ] && [ ! -L "$REPO/$sub" ]; then
    if [ -e "$DROPBOX/$sub" ]; then
      echo "! both $DROPBOX/$sub and a real $REPO/$sub exist; resolve by hand" >&2
      exit 1
    fi
    mv "$REPO/$sub" "$DROPBOX/$sub"
    echo "moved $sub/ -> Dropbox"
  fi
  if [ ! -e "$REPO/$sub" ] && [ -d "$DROPBOX/$sub" ]; then
    ln -s "$DROPBOX/$sub" "$REPO/$sub"
    echo "linked $sub/"
  fi
done

# nguyen_f26/: .tex sources stay tracked in git, so mirror only the PDFs
# file by file. A directory symlink would drop the sources from git.
if [ -d "$REPO/nguyen_f26" ] && [ ! -L "$REPO/nguyen_f26" ]; then
  while IFS= read -r -d '' pdf; do
    [ -L "$pdf" ] && continue
    rel="${pdf#"$REPO/"}"
    mkdir -p "$DROPBOX/$(dirname "$rel")"
    [ -e "$DROPBOX/$rel" ] || mv "$pdf" "$DROPBOX/$rel"
    rm -f "$pdf"
  done < <(find "$REPO/nguyen_f26" -name '*.pdf' -print0)

  if [ -d "$DROPBOX/nguyen_f26" ]; then
    while IFS= read -r -d '' pdf; do
      rel="${pdf#"$DROPBOX/"}"
      mkdir -p "$REPO/$(dirname "$rel")"
      [ -e "$REPO/$rel" ] || ln -s "$pdf" "$REPO/$rel"
    done < <(find "$DROPBOX/nguyen_f26" -name '*.pdf' -print0)
    echo "linked nguyen_f26/ PDFs"
  fi
fi

echo "done: material in $DROPBOX, linked into $REPO"
