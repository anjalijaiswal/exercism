# phone_number.rb
class PhoneNumber 
  def initialize(number)
    @digits = get_digits(number)
  end
  
  def number
    if @digits.length < 10 or @digits.length > 11
      '0' * 10
    elsif @digits.length == 11   
      @digits.start_with?('1') ? @digits.sub(/[1]/,'') : '0' * 10
    else 
      @digits
    end
  end

  def area_code
    @digits[0..2]
  end

  def to_s
    digits = number
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end

  def get_digits(number)
    return '0' * 10 if number =~ /[a-zA-Z]/
    digits = number.scan(/\d+/)
    digits.inject(''){|result, ele| result + ele }
  end
end
