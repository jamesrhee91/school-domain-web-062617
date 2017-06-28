require 'pry'

class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.values.each {|names| names.sort!}
    @roster
  end
end

# school = School.new("Bayside HS")
# school.add_student("Joe", 10)
# school.add_student("John", 11)
# school.add_student("James", 11)
# school.add_student("Mary", 12)
#
# binding.pry
