#! /bin/bash

if [ $# -ne 2 ]
then
    echo "Usage: ./backup.sh <source_directory> <target_directory>"
    echo "Kindly try again."
    exit 1
fi

if ! command -v rsync &> /dev/null
then
    echo "This script needs rsync to run."
    echo "Kindly use your distribution's package manager to install the rsync command."
    exit 2
fi

current_date=$(date +%Y-%m-%d)

rsync_options="-ravb --backup-dir=$2/$current_date --delete"

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log
