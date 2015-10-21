# raindrops.rb
require 'byebug'
class Raindrops
  def self.convert(num)
    prime_factors = (1..num).select { |n| num % n == 0}
    if prime_factors.include? 3 
      if (prime_factors.include? 5) && (prime_factors.include? 7)
         'PlingPlangPlong'
      elsif prime_factors.include? 5
        'PlingPlang'
      elsif prime_factors.include? 7
        'PlingPlong' 
      else
        'Pling'
      end 
    elsif prime_factors.include? 5 
      if prime_factors.include? 7
        'PlangPlong' 
      else
        'Plang'
      end
    elsif prime_factors.include? 7
      'Plong' 
    else
      num.to_s
    end
  end
end