#!/bin/bash
# File: rclone_sync_missing.sh

onedrive_path="MN_TU_OneDrive:nwadiugwu_backup"

while IFS= read -r file; do
    filename=$(basename "$file")
    remote_check=$(rclone lsf "$onedrive_path" | grep -Fx "$filename")

    if [ -z "$remote_check" ]; then
        echo "🔁 Copying: $file to $onedrive_path"
        rclone copy "$file" "$onedrive_path"
    else
        echo "✅ Already exists: $filename"
    fi
done < files_to_check.txt

