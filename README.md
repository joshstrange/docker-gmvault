# narf/gmvault

This is a Docker image to make use of gmvault and back up your gmail to an NFS
share.

### example command

```
docker run
  \ -e "NFS_MOUNT=nas:/mnt/biggins/email-backup/nat"
  \ -e "DB_DIR=/mnt/biggins/email-backup/nat/gmvault-db"
  \ --privileged
  \ -i -t narf/gmvault:dev your@example.com
```
