class School
attr_accessor :name, :grade



  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster=(roster)
    @roster = roster
  end

  def roster
    @roster
  end



  def add_student(student_name, grade)
    roster[grade] ||= []
      roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, name|
    sorted[grade] = name.sort
    end
    sorted
  end
end



















#end# code here!
#ghs = School.new("Geneva High School", {})
#ghs.name
