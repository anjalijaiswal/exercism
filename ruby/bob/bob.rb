# bob.rb
require 'byebug'
class Bob
  
  def hey(remark)
    return 'Whoa, chill out!' if is_yelling?(remark)
    return 'Sure.' if is_qsn?(remark)
    return 'Fine. Be that way!' if is_addressing?(remark)
    'Whatever.'  #if is_undefined?(remark)
  end

  def is_qsn?(remark)
    remark.end_with?('?')
  end

  def is_yelling?(remark)
    true if remark.upcase == remark && remark.downcase != remark
  end

  def is_addressing?(remark)
    remark.empty? || remark.strip.match(/^\s*$/)
  end

end