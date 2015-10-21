# accumulate.rb
class Array
  
  def accumulate
    temp = []
    self.each{ |n| temp << yield(n) }
    temp
  end
  
end