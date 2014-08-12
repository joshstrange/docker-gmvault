# narf/gmvault

This is a Docker image for running [gmvault](http://gmvault.org/)

### example command

```
docker run
  \ -e "DB_DIR=/mnt/gmvault"
  \ -v /tmp/backup:/mnt/gmvault
  \ -i -t narf/gmvault
  \ sync your@example.com
```

any options passed at the end of the `docker run` command will be passed on to
gmvault.
