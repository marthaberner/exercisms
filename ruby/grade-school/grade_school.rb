class School

  def initialize
    @roster = Hash.new { |roster, grade| roster[grade] = [] }
  end

  def add(student, grade)
    @roster[grade] << student
  end

  def grade(level)
    @roster[level].sort
  end

  def to_hash
    sorted = @roster.map do |grade, student|
      [grade, student.sort]
    end.sort
    Hash[sorted]
  end
end

