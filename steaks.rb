class Steak

    attr_accessor :grade

    def > (anotherSteak)        
        grade_scores = { "Prime" => 3, "Choice" => 2, "Select" => 1 }
        grade_scores[grade] > grade_scores[anotherSteak.grade]
    end
end

first_steak = Steak.new
first_steak.grade = "Prime"
second_steak = Steak.new
second_steak.grade = "Choice"

if first_steak > second_steak
    puts "I'll take #{first_steak.inspect}"
end
