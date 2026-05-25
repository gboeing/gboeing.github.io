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
cmd=(uvx --with yamllint yamllint)

for file in "${files[@]}"; do
  [[ -f "$file" ]] || continue

  # Extract front matter, including --- markers. It must start on line 1.
  frontmatter="$(
    awk '
      NR == 1 && $0 != "---" {exit}
      NR == 1 {print; next}
      NR > 1 {
        print
        if ($0 == "---") {exit}
      }
    ' "$file"
  )"

  if [[ -n "$frontmatter" ]]; then
    rc=0

    # Run yamllint only on stdin, no filenames.
    output="$(printf '%s\n' "$frontmatter" | "${cmd[@]}" "${yamllint_args[@]}" - 2>&1)" || rc=$?

    if [[ -n "$output" ]]; then
      # Replace "stdin" with the actual filename and remove blank lines.
      printf '%s\n' "$output" | awk -v file="$file" 'NF {print ($0 == "stdin" ? file : $0)}'
    fi

    if [[ "${rc:-0}" -ne 0 ]]; then
      status=1
    fi
  fi
done

exit "$status"
