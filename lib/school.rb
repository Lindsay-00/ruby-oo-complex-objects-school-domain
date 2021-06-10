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
        # @roster.sort_by{|key, value| value}.to_h
        #@roster.{|key| @roster[key].sort}
        # @roster

        # @roster.sort_by{|key, value| @roster[@student_grade]}.to_h

        arr = @roster.each_with_object({}){|(key, value), final_hash| final_hash[key] = value.sort}
        
       # @roster.each{|key, value| value.each{|element| element.sort}}
       #@roster.each{|key, value| value.sort}
    #    @roster[@student_grade].each{|value| value.sort}
    #  @roster[@student_grade].sort
    end
end
# binding.pry