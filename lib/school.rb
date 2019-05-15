require 'pry'

class School
  attr_accessor :name, :roster
  #allows us to GET and SET the values of both name & roster
  def initialize(name)
    @name = name
    #sets name of the school as an instance variable
    @roster = {}
    #sets roster for any school to an empty array as an instance variable
  end

  def add_student(stu_name, grade)
    #takes in a given student name and their grade
    roster[grade] ||= []
    #this adds grade as a KV pair, with a value of an empty array
    roster[grade] << stu_name
    #this sets the student's name as the balue for their grade (key)
  end

  def grade(stu_grade)
    #takes in a student's grade as an argument
    roster[stu_grade]
    #returns all the students in a particular grade
    binding.pry
  end

  def sort
    sorted_hash = {}
    #sets empty hash for sorted students
    roster.each do |grade, students|
    #iterates through the roster of students' grades and names
      sorted_hash[grade] = students.sort
      #puts grade as the key and sets the value as the sorted array of students
      #binding.pry
    end
    sorted_hash
  end
end
