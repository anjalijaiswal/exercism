# scrabble_score.rb
class Scrabble
  LETTER_VALUE = {
    1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
    2 => ['D', 'G'],
    3 => ['B', 'C', 'M', 'P'],
    4 => ['F', 'H', 'V', 'W', 'Y'],
    5 => ['K'],
    8 => ['J', 'X'],
    10 => ['Q', 'Z']
  }
  
  def initialize(word)
    @word = word
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  def score
    return 0 if @word == nil || @word.strip.empty? 
    @word.upcase.chars.inject(0) do |result, char| 
      result + LETTER_VALUE.select{|k, v| k if v.include? char}.keys[0]
    end
  end
end
