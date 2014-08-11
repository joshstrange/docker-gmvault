#!/usr/bin/env bash

/root/mount_nfs.sh

db_dir="${DB_DIR}"

if [ ! $db_dir ]; then
  echo ""
  echo "***************************************"
  echo "must set DB_DIR environment variable"
  echo "***************************************"
  echo ""

  echo "EXAMPLE:"
  echo "docker run -e DB_DIR=/mnt/storage/email-backup --privileged -t narf/gmvault"
  echo ""
  exit 1
fi

gmvault $*  --db-dir $db_dir
