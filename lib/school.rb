require 'pry'

roster = {9 => ["Zach Morris"], 7 => ["Philip Andrew"], 12 => ["JT Khan"]}

class School
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
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
        roster.each { |grade, students| sorted[grade] = students.sort }
        sorted
    end

end

school = School.new("The Flatiron School")
# puts school.name