# binary.rb
# require 'byebug'
class Binary
  VERSION = 1
  def initialize(binary)
    raise ArgumentError unless binary =~ /^[01]*$/
    @binary_num = binary.chars.reverse
  end

  def to_decimal
    @binary_num.map.with_index{ |n,i| n.to_i * 2**i }.inject(:+)
  end
end
