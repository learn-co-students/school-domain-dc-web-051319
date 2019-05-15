require 'pry'

class School
    attr_reader :name, :roster 

    def initialize(name, roster={})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(n)
        @roster.include?(n) ? @roster[n] : "That grade level does not exist."
    end

    def sort
        @roster.transform_values do |students|
             students.sort
        end
    end
end
