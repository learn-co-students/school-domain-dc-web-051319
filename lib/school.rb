# code here!
class School

    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade] != nil
          @roster[grade] << name
        else
          @roster[grade] = [name]
        end
    end


    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, name|
            name.sort!
        end
    end

end