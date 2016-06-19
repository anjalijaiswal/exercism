#hamming.rb
class Hamming
  
  VERSION = 1
  
  def self.compute(string1,string2) 
    raise_size_mismatch(string1, string2)
    (0...string1.length).select{|i| string2[i] != string1[i] }.count
  end

  def self.raise_size_mismatch(string1, string2)
    if string1.length != string2.length
      raise ArgumentError.new('String length mismatch')
    end
  end

end 
