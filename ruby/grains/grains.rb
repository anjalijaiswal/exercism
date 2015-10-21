# grains.rb
class Grains
  def self.square(n)
    2**(n-1)
  end

  def self.total
    # total is a (2n-1) series where n is 2**(n-1)
    2*(2**63) - 1
    # Iterating over 64 values
    # (1..64).inject {|sum,n| sum += 2**(n-1)}
  end
end