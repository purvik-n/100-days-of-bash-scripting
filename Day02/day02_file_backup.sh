#!/bin/bash
# backup.sh - Simple file backup script

source_dir="$HOME/Documents"                           # Source folder to backup
backup_dir="$HOME/Backups"                             # Where backups will be stored
timestamp=$(date +"%Y%m%d_%H%M%S")                     # Timestamp for unique backup folder
backup_name="backup_$timestamp"                        # Name for backup folder

# Create backup directory if it doesn't exist
if [ ! -d "$backup_dir" ]; then
   mkdir -p "$backup_dir"                              # -p means 'create parent directories as needed'
   echo "Created backup directory: $backup_dir"
fi

# Perform backup
echo "Starting backup of $source_dir..."
cp -r "$source_dir" "$backup_dir/$backup_name"         # -r means 'recursive' (include subdirs)

if [ $? -eq 0 ]; then                                  # $? is exit code of last command (0 = success)
   echo "Backup completed successfully: $backup_dir/$backup_name"
else
   echo "Backup failed!"
   exit 1
fi
