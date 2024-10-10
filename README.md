## Description

A simple Bash script to automate the process of backing up files and directories. This script allows you to specify the source and target directories.

- Supports incremental backups

- Notable features of the script include if statements, positional arguments, exit codes, variables, subshells, redirections and most importantly the rsync command.

- To run: ./backup.sh source_directory target_directory

## Installation

1. Clone the repository.
2. Make the script executable: chmod u+x backup.sh

## Usage
- To run, use the command: ./backup.sh [source_directory] [target_directory]

## Notes
- Make sure the rsync command is installed on your system as it is required.
- Do make sure to run the script with the [--dry-run] option first in the rsync command to test.