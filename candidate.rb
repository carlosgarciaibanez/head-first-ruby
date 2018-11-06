class Candidate
    attr_accessor :name, :age, :birthplace, :occupation, :hobby
    def initialize(name, age:, occupation:, hobby: nil, birthplace: nil)
        self.name = name
        self.age = age
        self.occupation = occupation
        self.hobby = hobby
        self.birthplace = birthplace
    end
end

def print_summary(candidate)
    puts "Candidate: #{candidate.name}"
    puts "Age: #{candidate.age}"
    puts "Occupation: #{candidate.occupation}"
    puts "Hobby: #{candidate.hobby}"
    puts "Birthplace: #{candidate.birthplace}"
end

candidate = Candidate.new("Carl Barnes", age: 49, occupation: "Attorney", birthplace: "Miami")
print_summary(candidate)

another_candidate = Candidate.new("John Doe", age: 30, occupation: "Engineer")
print_summary(another_candidate)
