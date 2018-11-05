lines = []
File.open("reviews.txt") do |reviews_file|
    lines = reviews_file.readlines
end

relevant_lines = lines
    .find_all { |line| line.include?("Truncate") }
    .reject { |line| line.include?("\t--") }

def find_adjective(string)
    words = string.split
    index = words.find_index("is")
    words[index + 1]
end

adjectives = relevant_lines.map { |line| find_adjective(line) }
puts adjectives