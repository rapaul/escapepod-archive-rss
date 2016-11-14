require 'rss'

rss = RSS::Maker.make('2.0') do |maker|
  maker.channel.author = 'Escape Pod'
  maker.channel.title = 'Escape Pod - Archive.org (Episodes 1-453)'
  maker.channel.about = 'https://archive.org/details/EscapePodCompleteMP3Collection'
  maker.channel.link = 'http://escapepod.org/'
  maker.channel.description = 'An unofficial feed of early Escape Pod episodes hosted on archive.org'
  maker.channel.updated = Time.now.to_s

  IO.readlines('EscapePodCompleteMP3Collection_vbr.m3u').each do |line|
    title = line.split('/')[-1].gsub('_', ' ').gsub('.mp3', '').chomp
    link = line.chomp

    maker.items.new_item do |item|
      item.link = link
      item.title = title
      item.updated = Time.now.to_s
      item.guid.content = link
      item.guid.isPermaLink = false
      item.enclosure.url = link
      item.enclosure.length = 100000 # file size unknown, making up size
      item.enclosure.type = 'audio/mpeg'
    end
  end
end

puts rss
