# clock.rb
class Clock
  
  def self.at(*time)
  
    # formated_time = format(time)
    
    # case formated_time.size
    # when 1
    #   "#{formated_time[0]}:00"
    # when 2
    #   "#{formated_time[0]}:#{formated_time[1]}"
    # else
    #   '00:00'
    # end
    # Time.hour(time)
  end

  private 

  # def self.format(time)
  #   time.map{ |x| sprintf '%02d', x }
  # end 
end