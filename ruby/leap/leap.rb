# leap.rb
class Year
  VERSION = 1
  def self.leap?(year)
    if year % 4 == 0 && year % 100 == 0 
      year % 400 == 0 ? true : false
    elsif year % 4 == 0
      true
    else
      false
    end
  end
end


# year % 400 == 0 || year % 4 == 0 && year % 100 != 0