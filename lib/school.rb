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
        arr = @roster.each_with_object({}){|(key, value), final_hash| final_hash[key] = value.sort}
    end
end
# binding.pry