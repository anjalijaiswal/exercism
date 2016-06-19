# beer_song.rb
require 'byebug'
class BeerSong

  def verse(num)   
    "#{quantity(num).capitalize} #{bottle_s(num)} of beer on the wall, #{quantity(num)} #{bottle_s(num)} of beer.\n" +
    "#{action(num)} #{quantity(num - 1)} #{bottle_s(num-1)} of beer on the wall.\n"
  end

  def action(num)
    if num == 0
      'Go to the store and buy some more,'
    elsif num == 1
      'Take it down and pass it around,'
    else
      'Take one down and pass it around,'
    end
  end

  def bottle_s(num)
    num == '1' ? 'bottle' : 'bottles'
  end

  def quantity(num)
    num == 0 ? "no more" :  "#{num}"
  end

  def verses(from, to)
    (to..from).map{|num| "#{verse(num)}\n"}.reverse.join
  end

  def sing
    verses(99, 0)
  end
end