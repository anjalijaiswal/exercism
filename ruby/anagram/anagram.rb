# anagram.rb
class Anagram 
  def initialize(string)
    @string = string.downcase
  end
  
  def match(arry)
    arry.select do |word| 
      word = word.downcase
      word != @string and word.chars.sort == @string.chars.sort
    end
  end
end