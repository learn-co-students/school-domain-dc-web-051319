# code here!
require "pry"
class School

  def initialize(name)
    @name = name
    #getter
    @roster= {}
  end
  #setter
  def roster
    @roster
  end



  def add_student(name, grade)
    if @roster[grade]
      @roster[grade].push(name)
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    if @roster.include?(grade)
      return @roster[grade]
    end
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end

end
