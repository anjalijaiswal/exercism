# phone_number.rb
class PhoneNumber 
  def initialize(number)
    @num_string = number
  end

  def number
    get_number
  end

  def area_code
    number[0..2]
  end

  def to_s
    number.sub(/(\d{3})(\d{3})/, "(\\1) \\2-")
  end

  def get_number
    if @num_string =~ /[a-zA-Z]/ or @num_string.length < 10 
      '0'*10
    elsif @num_string.length == 11 and @num_string.start_with? '1'
      @num_string.sub('1','')
    elsif @num_string.gsub(/[^0-9]/,'').length > 10
      '0'*10
    else
      @num_string.gsub(/[^0-9]/,'')
    end  
  end
end