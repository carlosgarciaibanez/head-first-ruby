#!/usr/bin/ruby

class Bird
    def talk
        puts "Chirp! Chirp!"
    end
    def move(destination)
        puts "Flying to the #{destination}"
    end
end

class Dog
    
    attr_reader :name, :age

    def name=(value)
        if value == ""
            raise "The name cannot be blank!"
        end
        @name = value
    end

    def age=(value) 
        if value < 0
            raise "An age of #{value} is not valid!"
        end
        @age = value
    end
    
    def talk
        puts "#{@name} says Bark!"
    end
    def move(destination)
        puts "#{@name} runs to the #{destination}"
    end

    def report_age
        puts "#{@name} is #{@age} years old"
    end
end

class Cat
    def talk
        puts "Meow!"
    end
    def move(destination)
        puts "Running to the #{destination}"
    end
end

bird = Bird.new
sandy = Dog.new
sandy.name = "Sandy"
sandy.age = 5
cat = Cat.new

bird.move("tree")
sandy.talk
sandy.report_age
bird.talk
cat.move("house")