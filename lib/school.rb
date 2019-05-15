# code here!
require 'pry'

class School

    ROSTER = {}

    def initialize(name)
        @name = name
    end

    def roster=(roster)
        @roster = roster 
    end

    def roster
        ROSTER
    end

    def add_student(student_name, age)

        if ROSTER[age] == nil
            ROSTER[age] = []
        end
        
        ROSTER[age] << student_name
    end

    def grade(grade)
        ROSTER[grade]
    end

    def sort
        ROSTER.sort.to_h
    end
end