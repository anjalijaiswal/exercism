# word_count.rb
class Phrase
  
  VERSION = 1
  
  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count
    wrd_count = {}
    remove_punctuation
    arry = @phrase.split
    arry.each{ |wrd| wrd_count[wrd] = arry.count(wrd) }
    wrd_count 
  end

  def remove_punctuation
    @phrase.gsub!(/[!@%&"$<>,.^#*(){}:\]\[]/, ' ')
    @phrase.gsub!(/\s'|'\s/, ' ')
  end
end