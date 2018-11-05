lines = []
File.open("reviews.txt") do |reviews_file|
    lines = reviews_file.readlines
end

puts lines.length

relevant_lines = lines
    .find_all { |line| line.include?("Truncate") }
    .reject { |line| line.include?("\t--") }

puts relevant_lines