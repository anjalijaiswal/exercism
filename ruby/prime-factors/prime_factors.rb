# prime_factors.rb
require 'prime'
class PrimeFactors
  def self.for(number)
    factor = []
    return [] if number == 1
    last = catch (:prime) do
      Prime.each(number) do |prime|
        while number % prime == 0 do
          factor << prime 
          number = number/prime
          throw(:prime, number) if number.prime?
        end
      end
    end
    last ? factor << last : factor
  end
end