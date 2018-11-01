#!/usr/bin/ruby

class Animal
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


class Bird < Animal
    def talk
        puts "#{@name} says Chirp! Chirp!"
    end
    def move(destination)
        puts "#{@name} flies to the #{destination}"
    end
end

class Dog < Animal
    def talk
        puts "#{@name} says Bark!"
    end
end

class Cat < Animal
    def talk
        puts "#{@name} says Meow!"
    end    
end

class Armadillo < Animal
    def move(destination)
        puts "#{@name} unrolls!"
        super
    end
end

sandy = Dog.new
sandy.name = "Sandy"
sandy.age = 5
sandy.talk
sandy.report_age

polly = Bird.new
polly.name = "Polly"
polly.move("tree")
polly.talk

whiskers = Cat.new
whiskers.name = "Whiskers"
whiskers.move("house")
whiskers.age = 2
whiskers.report_age

army = Armadillo.new
army.name = "Army"
army.move("hole")