# code here!

class School

    attr_accessor :school_name, :roster, :name, :grade
    
    def initialize(school_name, roster={})
      @school_name = school_name
      @roster = roster
    end

    def add_student(name, grade)
        unless roster.keys.include?(grade)
            roster[grade] = []
            roster[grade] << name
        else
            roster[grade] << name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        #sort each array within hash
        roster.values.each do |names_array, i|
            i = 0
            roster.values[i].sort!
            i += 1
        end
        roster
    end

end