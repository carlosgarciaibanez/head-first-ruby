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
    
    def make_up_name
        @name = "Sandy"
    end
    def make_up_age
        @age = 5
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
dog = Dog.new
dog.make_up_name
dog.make_up_age
cat = Cat.new

bird.move("tree")
dog.talk
dog.report_age
bird.talk
cat.move("house")