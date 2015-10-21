# strain.rb
class Array  
  def keep
    # arry_keep = []
    if block_given?
      select{ |n| yield(n) }
    end
    # arry_keep
  end
  
  def discard
    arry_discard = []
    if block_given?
      each{ |n| arry_discard << n unless yield(n)} 
    end
    arry_discard
  end 
end