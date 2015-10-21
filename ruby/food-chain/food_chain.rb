# food_chain.rb
require 'byebug'
class FoodChain
  VERSION = 2
  def initialize
  end
  
  def self.song
    line2 = [
      "It wriggled and jiggled and tickled inside her.\n",
      "How absurd to swallow a bird!\n",
      "Imagine that, to swallow a cat!\n",
      "What a hog, to swallow a dog!\n",
      "Just opened her throat and swallowed a goat!\n",
      "I don't know how she swallowed a cow!\n",
    ]
    variation = ['fly','spider','bird','cat','dog','goat','cow','horse']
    stanza = "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    start = "I know an old lady who swallowed a"
    repeat = ""
    song = []
    for i in 0..6
      song << "#{start} #{variation[i]}.\n"
      # debugger
      song << line2[i-1] unless i == 0
      r = (i..1)
      (r.first).downto(r.last).each do |j| 
        if i > 1 && variation[j] == 'bird'
          song << "She swallowed the #{variation[j]} to catch the #{variation[j-1]} that wriggled and jiggled and tickled inside her.\n"
          next
        end
        song << "She swallowed the #{variation[j]} to catch the #{variation[j-1]}.\n"
      end
      song << stanza
    end
    song << "I know an old lady who swallowed a horse.\n"
    song << "She's dead, of course!\n"
    song.join
  end
end