def find_adjective(string)
    words = string.split
    index = words.find_index("is")
    words[index + 1]
end

lines = []
File.open("reviews.txt") do |reviews_file|
    lines = reviews_file.readlines
end

reviews = lines
    .find_all { |line| line.include?("Truncate") }
    .reject { |line| line.include?("\t--") }


adjectives = reviews.map do |line| 
    "'#{find_adjective(line).capitalize}'"
end

puts "The critics agree, Truncated is:"
puts adjectives