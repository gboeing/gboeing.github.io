#!/bin/sh
# Replace `last_modified_at` timestamp with current time
# From https://mademistakes.com/notes/adding-last-modified-timestamps-with-git/

git diff --cached --name-status | grep -E -i "^(A|M).*\.(md)$" | while read a b; do
  sed -i.bak "/---.*/,/---.*/s/^last_modified_at:.*$/last_modified_at: $(date -u --iso-8601=seconds)/" "$b"
  rm "$b.bak"
  git add "$b"
done
