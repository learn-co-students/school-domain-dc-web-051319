# code here!

require "pry"
class School

attr_reader :roster

  # def roster
  #   @roster
  # end
  #
  # def roster=(value)
  #   @roster=value
  # end

  def initialize(name, roster={})
    @school=name
    @roster=roster
  end

  def add_student(name,number)
    #binding.pry
    if self.roster[number] == nil
      self.roster[number] = [name]
    else
      self.roster[number]<<name
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each {|grade,students| self.roster[grade]=students.sort}
    self.roster.sort_by{|key| key}.to_h

  end

end

# binding.pry
#
# "HI"
