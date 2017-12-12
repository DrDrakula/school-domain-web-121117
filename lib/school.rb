# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :name

  def roster
    @roster
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade].push(student)
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    @roster.each_value do |students|
      students.sort!
    end
  end
end
