# narf/gmvault

This is a Docker image to make use of gmvault and back up your gmail to an NFS
share.

### example command

```
docker run
  \ -e "NFS_MOUNT=nas:/mnt/storage/email-backup/nat"
  \ -e "DB_DIR=/mnt/storage/email-backup/nat/gmvault-db"
  \ --privileged
  \ -i -t narf/gmvault:dev sync your@example.com
```

any options passed at the end of the `docker run` command will be passed on to
gmvault.
