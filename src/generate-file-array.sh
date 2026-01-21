#!/bin/bash

OUTPUT=modules/render/content.js
TARGET_DIR="./content"

echo "export const content = [" > $OUTPUT

# Generate array with file metadata including modification times
# Sort files by name for consistency
find $TARGET_DIR -type f | sort | while read -r file; do
  # Get file modification time as ISO string
  if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    mod_time=$(stat -f "%Sm" -t "%Y-%m-%dT%H:%M:%SZ" "$file")
  elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" || "$OSTYPE" == "win32" ]]; then
    # Windows (Git Bash, MSYS2, Cygwin, or WSL)
    if command -v powershell.exe &> /dev/null; then
      # Use PowerShell to get modification time
      mod_time=$(powershell.exe -Command "(Get-Item '$file').LastWriteTime.ToString('yyyy-MM-ddTHH:mm:ssZ')" 2>/dev/null | tr -d '\r')
    elif command -v stat &> /dev/null; then
      # Fallback to stat if available (WSL or Cygwin with coreutils)
      mod_time=$(stat -c "%y" "$file" | sed 's/ /T/' | sed 's/\.[0-9]* /Z/' | sed 's/+[0-9]*/Z/')
    else
      # Last resort: use ls and parse the output (less reliable)
      mod_time=$(date -Iseconds)
    fi
  else
    # Linux and other Unix-like systems
    mod_time=$(stat -c "%y" "$file" | sed 's/ /T/' | sed 's/\.[0-9]* /Z/' | sed 's/+[0-9]*/Z/')
  fi
  
  # Get file extension to determine type
  extension="${file##*.}"
  extension=$(echo "$extension" | tr '[:upper:]' '[:lower:]')
  
  if [[ "$extension" == "txt" ]]; then
    file_type="TXT"
  elif [[ "$extension" =~ ^(jpg|jpeg|png|gif|webp|svg|bmp)$ ]]; then
    file_type="IMAGE"
  else
    file_type="null"
  fi
  
  # Properly escape single quotes in the file path for JavaScript
  escaped_file="${file//\'/\\\'}"
  
  echo "  { file: '$escaped_file', lastModified: '$mod_time', fileType: '$file_type' }," >> $OUTPUT
done

echo "];" >> $OUTPUT
echo "Wrote content array with metadata to $OUTPUT"