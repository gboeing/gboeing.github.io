#!/usr/bin/env bash
set -euo pipefail

# Separate yamllint args from file paths
yamllint_args=()
files=()
for arg in "$@"; do
  if [[ "$arg" == *.md || "$arg" == *.markdown ]]; then
    files+=("$arg")
  else
    yamllint_args+=("$arg")
  fi
done

if [[ "${#files[@]}" -eq 0 ]]; then
  echo "No Markdown files specified." >&2
  exit 0
fi

status=0

for file in "${files[@]}"; do
  [[ -f "$file" ]] || continue

  # Front matter must start on line 1
  if ! sed -n '1p' "$file" | grep -Fxq -- '---'; then
    continue
  fi

  # Extract front matter including --- markers
  frontmatter="$(sed -n '1{/^---$/!q};/^---$/,/^---$/p' "$file")"
  if [[ -n "$frontmatter" ]]; then
    # Run yamllint only on stdin, no filenames
    CMD="uvx --with yamllint yamllint"
    output="$(echo "$frontmatter" | $CMD "${yamllint_args[@]}" - 2>&1)" || rc=$?

    # Remove leading/trailing blank lines
    output="$(echo "$output" | sed '/^[[:space:]]*$/d')"

    if [[ -n "$output" ]]; then
      # Replace "stdin" with the actual filename
      echo "$output" | sed "s|^stdin\$|$file|"
    fi

    if [[ "${rc:-0}" -ne 0 ]]; then
      status=1
    fi
  fi
done

exit "$status"
