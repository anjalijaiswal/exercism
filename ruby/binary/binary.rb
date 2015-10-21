# binary.rb
require 'byebug'
class Binary
  VERSION = 1
  def initialize(binary)
    raise ArgumentError unless binary =~ /^[01]*$/
    @binary_num = binary.chars.reverse
  end

  def to_decimal
    decimal = 0
    @binary_num.each_index{ |i| decimal += @binary_num[i].to_i * 2**i }
    decimal
  end
end
