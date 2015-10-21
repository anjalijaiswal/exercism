# grade_school.rb
class School
  
  def initialize
    @hash = Hash.new { |h, k| h[k] = [] }
    # @grades = {}
  end
  
  def to_h
    @grades.sort.to_h.select{|k,v| v.sort!}
  end

  def grade(grade)
    @grades.has_key?(grade) ? @grades[grade].sort! : []
  end

  def add(name, grade)
    # @grades.has_key?(grade) ? @grades[grade] << name : @grades[grade] = [name]
    @grades[grade] << name
  end
end
