class Steak

    include Comparable

    attr_accessor :grade

    GRADE_SCORES = { "Prime" => 3, "Choice" => 2, "Select" => 1 }

    def <=> (anotherSteak)
        comparison = GRADE_SCORES[grade] - GRADE_SCORES[anotherSteak.grade]        
        if comparison == 0
            0
        else
            comparison / comparison.abs
        end
    end
end

first_steak = Steak.new
first_steak.grade = "Prime"
second_steak = Steak.new
second_steak.grade = "Choice"

if first_steak > second_steak
    puts "I'll take #{first_steak.inspect}"
end

third_steak = Steak.new
third_steak.grade = "Select"

steaks = [second_steak, third_steak, first_steak]
steaks.sort.each { |steak| p steak }