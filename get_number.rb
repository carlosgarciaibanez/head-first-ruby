#!/usr/bin/ruby

# Get My Number Game
# Written by me

puts "Welcome to 'Get My Number!'"
print "What's your name? "

input = gets
name = input.chomp

puts "Welcome, #{name}!"

# Store a randmom number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

num_guesses = 0
remaining_guesses = 10 - num_guesses
puts remaining_guesses.to_s + " guesses left."