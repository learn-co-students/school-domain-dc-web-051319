# code here!
class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster.key?(grade)
            @roster[grade].push(name)
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster = @roster.sort.to_h
        @roster.each do |key, value|
            @roster[key] = @roster[key].sort
        end
    end
end