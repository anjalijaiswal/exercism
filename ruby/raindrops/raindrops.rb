# raindrops.rb
require 'byebug'
class Raindrops
  SOUND = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }
  
  def self.convert(num)
    rhyme = SOUND.select { |n| num % n == 0}
    rhyme.empty? ? num.to_s : rhyme.values.join
  end
end