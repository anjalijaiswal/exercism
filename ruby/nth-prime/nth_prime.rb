# nth_prime.rb
class Prime
  def nth(n)
    prime = []
    return 2 if n == 1
    raise ArgumentError if n == 0
    
    (3..10**9).each do |i|
      prime << i if is_prime?(i)
      break if prime.size == n
    end
    prime[n-2]
  end
  
  def is_prime?(n)
    (2..Math.sqrt(n)).each {|num| return false if n % num == 0 }
  end
end
