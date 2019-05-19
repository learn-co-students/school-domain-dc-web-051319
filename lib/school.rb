require 'pry'
class School

  attr_accessor :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade)
    if self.roster.include?(grade)
      self.roster[grade].push(student)
    else
      self.roster[grade] = [student]
    end

  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    new_hash = {}
    self.roster.each do |grade, name|
      new_hash[grade] = name.sort

    end
  new_hash
  end

end
