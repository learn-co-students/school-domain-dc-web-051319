# code here!schoo

class School

  attr_reader :name
  def initialize(name)
    @name  = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade]
      roster[grade].push(name)
    else
      roster[grade] = [name]
    end
  end

  def grade(grade)
    if @roster.include?(grade)
      return @roster[grade]
    end
  end

  def sort
    @roster.each  do |grade, name|
      @roster[grade] = name.sort
    end
  end

end
