# grade_school.rb'
class School
  VERSION = 1
  def initialize
    @grades = Hash.new { |h, k| h[k] = [] }
  end
  
  def to_h
    @grades.sort.to_h
  end

  def grade(grade)
    @grades[grade]
  end

  def add(name, grade)
    @grades[grade].push name
    @grades[grade].sort!
  end
end
