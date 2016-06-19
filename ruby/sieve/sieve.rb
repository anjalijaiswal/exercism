# sieve.rb
class Sieve 
  
  def initialize(num)
    @num = num
  end 

  def primes
    numbers = (2..@num).to_a
    numbers.each_index do |i|
      numbers - (i+1...@num).map{|x| x * i }
    end 
    numbers
  end
end