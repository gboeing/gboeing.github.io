#!/usr/bin/env bash
set -euo pipefail

uvx --with mdformat-front-matters mdformat --wrap 80 *.md
uvx --with mdformat-front-matters mdformat --wrap 80 _posts/*.md
uvx --with mdformat-front-matters mdformat --wrap 80 _pages/*.md
uvx --with mdformat-front-matters mdformat --wrap 80 _pages/*/*.md

# WARNING this script is dangerous and requires manual clean up after it is
# run. Afterwards, fix the <!-- markdownlint-disable-next-line ... --> tags
# which got a blank line placed below them. Fix the CSS styling on about.md.
# Find/replace all "\[" with "[", and "\]" with "]" (because mdformat doesn't)
# recognize markdown links if they contain liquid code, so it escapes the
# brackets incorrectly).
