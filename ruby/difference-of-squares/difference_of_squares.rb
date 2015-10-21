# difference_of_squares.rb
class Squares
  def initialize(num)
    @num = num
  end
  def square_of_sums
    sum = (1..@num).inject(:+)
    sq_sums = sum*sum
  end

  def sum_of_squares
    (1..@num).inject{|sum,n| sum += n*n }
  end

  def difference
    square_of_sums - sum_of_squares
  end
end