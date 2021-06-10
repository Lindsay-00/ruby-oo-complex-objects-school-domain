# code here!
require "pry"
class School
    attr_reader :name
    attr_accessor :roster
    def initialize (name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student (student_name, student_grade) 
        @student_grade = student_grade
        if @roster.has_key?(student_grade)
            @roster[student_grade] << student_name
        else @roster[student_grade] = []
            @roster[student_grade] << student_name
        end
    end

    def grade (num)
        @roster[num]
    end

    def sort
        @roster.sort_by{|key, value| value}.to_h
        @roster[9].sort!
        @roster
       

        # arr = @roster.collect{|grade, name| name.sort}
        
    end
end
# binding.pry