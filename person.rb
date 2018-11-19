class Person
    def speak
        puts "Hello, there!"
    end
end

person = Person.new
person.speak

superhero = Person.new
def superhero.fly 
    puts "Up we go!"
end
def superhero.speak
    puts "Off to fight crime!"
end

superhero.fly
superhero.speak


