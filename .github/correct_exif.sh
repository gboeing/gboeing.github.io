#!/usr/bin/env bash

set +e

YEAR=$(date +"%Y")
NAME=$(git config user.name)
COPYRIGHT="© ${YEAR} ${NAME} - All Rights Reserved."

# List of paths to skip
# I don't own these images so I don't want to set the copyright as mine
SKIP_PATHS=()

for file in $@
do
  # Check if the file is in the skip list
  for skip in "${SKIP_PATHS[@]}"; do
    if [[ "$file" == "$skip" ]]; then
      echo "Skipping $file"
      continue 2
    fi
  done

  exiftool \
    -q \
    -all= \
    --icc_profile:all \
    -IPTC:CopyrightNotice="${COPYRIGHT}" \
    -IPTC:Credit="${NAME}" \
    -IPTC:By-line="${NAME}" \
    -copyright="${COPYRIGHT}" \
    -copyrightnotice="${COPYRIGHT}" \
    -credit="${NAME}" \
    -overwrite_original \
    ${file}
done
