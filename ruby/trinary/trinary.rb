# trinary.rb
class Trinary
  def initialize(string)
    if string =~ /[a-zA-Z]+/ 
      @string = [0] 
    else
      @string = string.chars.map{|char| char.to_i}.reverse
    end
  end

  def to_decimal 
    @string.map.with_index do |element, index|
      element * 3**index
    end.inject(:+)
  end
end