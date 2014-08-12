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

What the above says is this:

* set the `DB_DIR` environment variable to `/mnt/gmvault`
* mount the `/tmp/backup` dir on the host on `/mnt/gmvault` in the container

your email backup will be in `/tmp/backup` on your local machine

any options passed at the end of the `docker run` command will be passed on to
gmvault.
