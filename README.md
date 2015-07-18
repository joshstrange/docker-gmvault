# joshstrange/gmvault

This is a Docker image for running [gmvault](http://gmvault.org/)

### example command

```
docker run -v /backup:/path/to/where/you/want/to/store/emails -v /db:/path/to/where/you/want/to/store/config -i -t joshstrange/gmvault sync your@example.com
```

Any options passed at the end of the `docker run` command will be passed on to
gmvault. In the example above ````sync your@example.com```` was passed to the container.
