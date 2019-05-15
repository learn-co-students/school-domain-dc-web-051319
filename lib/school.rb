# code here!

require "pry"
class School

attr_accessor :roster, :students


  def initialize(name, roster={})
    @school
    @roster = roster
  end

  def add_student(name,number)
    #binding.pry

    if @roster[number] == nil
      @roster[number] = [name]
    else
      @roster[number]<<name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade,students| @roster[grade]=students.sort}
    @roster.sort_by{|key| key}.to_h
    #@ans = {7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]}

  end

end
