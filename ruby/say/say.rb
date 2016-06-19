class Say
  NUMERALS = {
    0 =>  'zero',
    1 =>  'one',
    2 =>  'two',
    3 =>  'three',
    4 =>  'four',
    5 =>  'five',
    6 =>  'six',
    7 =>  'seven',
    8 =>  'eight',
    9 =>  'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety'
  }

  PLACE_VALUE = {
    10**2 => 'hundred',
    10**3 => 'thousand',
    10**6 => 'million',
    10**9 => 'billion'
  }

  def initialize(num)
    fail ArgumentError if invalid?(num)
    @num = num
  end

  def invalid?(num)
    num >= 1_000_000_000_000 || num < 0
  end

  def in_english
    case
    when two_digit?(@num)
      return return_2_digit(@num)
    when three_digit?(@num)
      return_3_digit(@num)
    when four_digit?(@num)
      return_4_digit(@num)
    when five_digit?(@num)
      return_4_digit(@num)
    when six_digit?(@num)
      return_6_digit(@num)
    when seven_digit?(@num)
      return_7_digit(@num)
    when nine_digit?(@num)
      return_9_digit @num
    when ten_digit?(@num)
      return_10_digit @num
    when twelve_digit?(@num)
      return_12_digit @num
    end
  end

  def numerals?(num)
    NUMERALS.key? num
  end

  def place_values?(num)
    PLACE_VALUE.key? num
  end

  def return_numeral(num)
    NUMERALS[num]
  end

  def return_place_value(num)
    'one ' + PLACE_VALUE[num]
  end

  def two_digit?(num)
    num < 100
  end

  def three_digit?(num)
    num < 1000
  end

  def four_digit?(num)
    num < 10_000
  end

  def five_digit?(num)
    num < 100_000
  end

  def six_digit?(num)
    num < 1_000_000
  end

  def seven_digit?(num)
    num < 10_000_000
  end

  def nine_digit?(num)
    num < 1_000_000_000
  end

  def ten_digit?(num)
    num < 10_000_000_000
  end

  def twelve_digit?(num)
    num < 1_000_000_000_000
  end

  def return_2_digit(num)
    return return_numeral(num) if numerals?(num)
    NUMERALS[num - num % 10] + '-' + NUMERALS[num % 10]
  end

  def return_3_digit(num)
    return return_place_value(num) if place_values?(num)
    first_num = ones_palace_num((num - num % 100) / 100)
    return return_2_digit(num % 1000) if first_num == 'zero'
    first_num + ' ' + PLACE_VALUE[100] + ' ' + return_2_digit(num % 100)
  end

  def return_4_digit(num)
    return return_place_value(num) if place_values?(num)
    first_num = ones_palace_num((num - num % 1000) / 1000)
    return return_3_digit(num % 1000) if first_num == 'zero'
    first_num + ' ' + PLACE_VALUE[1000] + ' ' + return_3_digit(num % 1000)
  end

  def return_6_digit(num)
    return return_place_value(num) if place_values?(num)
    first_num = ones_palace_num((num - num % 100_000) / 100_000)
    return return_4_digit(num % 10_000) if first_num == 'zero'
    first_num + ' ' + PLACE_VALUE[100] + ' ' + return_4_digit(num % 100_000)
  end

  def return_7_digit(num)
    return return_place_value(num) if place_values?(num)
    first_num = ones_palace_num((num - num % 1_000_000) / 1_000_000)
    return return_6_digit(num % 1_000_000) if first_num == 'zero'
    first_num + ' ' + PLACE_VALUE[1_000_000] + ' ' + return_6_digit(num % 1_000_000)
  end

  def return_9_digit(num)
    first_num = ones_palace_num((num - num % 100_000_000) / 100_000_000)
    return return_7_digit(num % 100_000_000) if first_num == 'zero'
    first_num + ' ' + PLACE_VALUE[100] + ' ' + return_7_digit(num % 100_000_000)
  end

  def return_10_digit(num)
    return return_place_value(num) if place_values?(num)
    first_num = ones_palace_num((num - num % 1_000_000_000) / 1_000_000_000)
    return return_9_digit(num % 1_000_000_000) if first_num == 'zero'
    first_num + ' ' + PLACE_VALUE[1_000_000_000] + ' ' + return_9_digit(num % 1_000_000_000)
  end

  def return_12_digit(num)
    first_num = return_numeral((num - num % 100_000_000_000) / 100_000_000_000)
    first_num + ' ' + PLACE_VALUE[100] + ' ' + return_10_digit(num % 100_000_000_000)
  end

  def ones_palace_num(num)
    return_2_digit(num)
  end
end
