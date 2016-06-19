class Hexadecimal 
  VALUE = {
    '0'  => 0,
    '1'  => 1,
    '2'  => 2,
    '3'  => 3,
    '4'  => 4,
    '5'  => 5,
    '6'  => 6,
    '7'  => 7,
    '8'  => 8,
    '9'  => 9,
    'A' => 10,
    'B' => 11,
    'C' => 12,
    'D' => 13,
    'E' => 14,
    'F' => 15
  }

  def initialize(hexa_string)
    if hexa_string.match /[^0-9abcdef]/
      @hexa_array = ['0']
    else
      @hexa_array = hexa_string.upcase.chars.reverse
    end
  end 

  def to_decimal
    @hexa_array.each_index.map{|i| VALUE[@hexa_array[i]]*16**i}.inject(:+)
  end
end