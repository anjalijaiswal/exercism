# series.rb 
# will print consecutive series of array  ex '01234' n = 3 ans: 012 123 234
class Series
  
  def initialize(string)
    @digits = string.chars.map!{|element| element.to_i}
  end
  
  def slices(n)
    combination = []
    # p "#{@digits}"
    @digits.each_index do |i|
      combination << @digits[i,n] if @digits[i,n] == (@digits[i]..@digits[i]+(n-1)).to_a      
    end
    combination
  end
end