# sum_of_multiples.rb
require 'byebug'
class SumOfMultiples 
  def initialize(*factors)
    @factors = factors
  end
  
  def self.to(limit, *factors)
    factors.empty? ? factors = [3,5] : factors.flatten!
    multiples = [0]
    factors.each do |factor| 
      (1..limit).each do |num| 
        multiples << factor*num if factor*num < limit 
      end
    end
    multiples.uniq.inject(:+)
  end  

  def to(limit)
    self.class.to(limit, @factors)
  end
end

# class SumOfMultiples
#   def initialize(*numbers)
#     @numbers = numbers
#   end

#   def to(number)
#     1.upto(number-1).select do |candidate|
#       @numbers.any? { |n| candidate % n == 0 }
#     end.reduce(0, :+)
#   end

#   def self.to(number)
#     new(3, 5).to(number)
#   end
# end