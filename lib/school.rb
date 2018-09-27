# code here!# code here!
require 'pry'
class School
  attr_reader :name, :roster, :grades

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
      @roster
    end
  end

  def grade(grade)
    @grades = @roster[grade]
    @grades
  end

  def sort
    @roster.sort_by { |grade, names_array| names_array.sort}

  end
end
