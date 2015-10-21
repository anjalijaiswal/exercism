# series.rb
class Series
  
  def initialize(string)
    @digits = string.chars.map{&:to_i}
  end
  
  def slices(n)
    slice_invalid?(n)
    combination = []
    for i in 0..@digits.size - n 
      combination << @digits[i,n]
    end   
    combination
  end

  def slice_invalid?(n)
    raise ArgumentError.new("Oops, number of elements are lesser than provided length") if @digits.size < n
  end
end