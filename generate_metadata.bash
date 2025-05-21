#!/bin/bash

COMMIT_METADATA="evidence_commit_metadata.json"

echo "{" > "$COMMIT_METADATA"
first=true

# Loop through all files inside evidence/ksi-* directories
find evidence/ksi-* -type f | while read -r file; do
  filename=$(basename "$file")

  # Skip non-evidence files
  if [[ "$filename" == ".gitkeep" ]] || [[ "$filename" == metadata.json ]] || [[ "$filename" == README* ]]; then
    continue
  fi

  # Get commit metadata
  commit_info=$(git log -1 --format="%H|%ct" -- "$file")
  commit_sha=$(echo "$commit_info" | cut -d'|' -f1)
  commit_ts=$(echo "$commit_info" | cut -d'|' -f2)

  # Format timestamp
  commit_time=$(date -u -d "@$commit_ts" +'%Y-%m-%dT%H:%M:%SZ')

  # Format file key (strip "evidence/" prefix)
  file_key=$(echo "$file" | sed 's|^evidence/||')

  # Append entry to JSON
  if [ "$first" = true ]; then
    first=false
  else
    echo "," >> "$COMMIT_METADATA"
  fi

  echo "  \"$file_key\": { \"commit_sha\": \"${commit_sha:0:7}\", \"commit_time\": \"$commit_time\" }" >> "$COMMIT_METADATA"
done

echo "" >> "$COMMIT_METADATA"
echo "}" >> "$COMMIT_METADATA"

echo "✅ Done. Commit metadata written to $COMMIT_METADATA"
