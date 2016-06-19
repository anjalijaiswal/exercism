# trinary.rb
class Trinary
  def initialize(string)
    if string =~ /[012]+/ 
      @trinary_arry = string.chars.map(&:to_i).reverse
    else
      @trinary_arry = [0] 
    end
  end

  def to_decimal 
    @trinary_arry.map.with_index do |trinary_digit,index|
      trinary_digit * 3**index 
    end.inject(:+)
  end
end