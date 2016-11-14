[Escape Pod](http://escapepod.org) publishes great sci-fi short story podcasts, unfortunately their podcast feed starts at episode 549. Fortunately archive.org has episodes 1 through 453 available.

This little ruby script converts the [m3u from archive.org](https://archive.org/details/EscapePodCompleteMP3Collection) to an RSS feed for podcast apps to consume.

```
$ ruby m3rss.rb > rss.xml
```

Put that rss.xml feed somewhere your podcast app can reach it.

Here's one I prepared earlier on [dropbox](https://www.dropbox.com/s/29agyateefffm2h/rss.xml?dl=1). The feed never updates, so feel free to put your feed reader into manual update mode.
