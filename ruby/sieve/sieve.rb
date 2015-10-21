# sieve.rb
class Sieve 
  def initialize(num)
    @numbers = (2..num).to_a
  end 

  def primes
    temp = []
    prime = []
    @numbers.each_index do |i|
      (i+1...@numbers.size).each{ |x| temp << @numbers[x] if @numbers[x] % @numbers[i] == 0 }
      @numbers = @numbers - temp
    end 
    @numbers
  end
end

