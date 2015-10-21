# beer_song.rb
require 'byebug'
class BeerSong

  def verse(verse_num)
    var1 = determine_var1(verse_num)
    var2 = determine_var1(verse_num - 1)
    
    if verse_num == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif verse_num == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{var1} of beer on the wall, #{var1} of beer.\n" \
      "Take one down and pass it around, #{var2} of beer on the wall.\n"
    end
  end

  def determine_var1(verse_num)
    if verse_num == 1
      '1 bottle'
    else
      "#{verse_num} bottles"
    end
  end

  def verses(from, to)
    (to..from).map{|verse_num| "#{verse(verse_num)}\n"}.reverse.join
  end

  def sing
    verses(99, 0)
  end
end