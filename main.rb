#!/usr/bin/env ruby


def play_mp3(dir_path)
  dir = Dir.new dir_path
  mp3s = dir.to_a.grep(/.mp3/)
  mp3s.each do |mp3|
    #puts mp3.match(/([\w-]*)/)[0]
    puts mp3.gsub(/\.mp3$/,'')
    `mplayer -really-quiet #{dir_path + mp3}`
    sleep 1
  end

end

def main(*args)

  path = "/home/jiyuhang/git/CovertToSuperMemo/ruby/supermemo-20170104-175047_files/Elements/"
  loop do
    play_mp3 path
  end
end

main if $0 == __FILE__


