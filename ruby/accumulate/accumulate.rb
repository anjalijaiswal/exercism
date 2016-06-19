# accumulate.rb
class Array
  
  def accumulate
    # temp = []
    # self.each{ |n| temp << yield(n) }
    # temp
    # Instead of ths you can do:
    self.map{|n| yield(n) } # self is not necessaRY
  end
  
end