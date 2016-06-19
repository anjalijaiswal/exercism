# series.rb
class Series
  
  def initialize(string)
    @digits = string.chars.map(&:to_i)
  end
  
  def slices(n)
    slice_invalid?(n)
    (0..@digits.size - n).map{|i| @digits[i,n]}
  end

  def slice_invalid?(n)
    raise ArgumentError.new("Oops, number of elements are lesser than provided length") if @digits.size < n
  end
end