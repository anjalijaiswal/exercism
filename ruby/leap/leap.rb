# leap.rb
class Year
  VERSION = 1
  def self.leap?(year)
    year % 400 == 0 || year % 4 == 0 && year % 100 != 0
  end
end


