#hamming.rb
class Hamming
  VERSION = 1
  def self.compute(string1,string2)
    raise ArgumentError if string1.length != string2.length
    arry1 = string1.chars
    i = count = 0
    string2.each_char do |char|
      arry1[i].include?(char) ? count += 0 : count += 1
      i += 1
    end
    count
  end
end 
