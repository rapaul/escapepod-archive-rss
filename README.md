[Escape Pod](http://escapepod.org) publishes great sci-fi short story podcasts, unfortunately their podcast feed starts at episode 549. Fortunately archive.org has episodes 1 through 453 available.

This little ruby script converts the [m3u from archive.org](https://archive.org/details/EscapePodCompleteMP3Collection) to an RSS feed for podcast apps to consume.

```
$ ruby m3rss.rb > rss.xml
```

The put that rss.xml feed somewhere your podcast app can reach it.
