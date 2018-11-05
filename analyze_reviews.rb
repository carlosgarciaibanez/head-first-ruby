lines = []
File.open("reviews.txt") do |reviews_file|
    lines = reviews_file.readlines
end

puts lines.length

relevant_lines = []
lines.each do |line|
    if line.include?("Truncate")
        relevant_lines << line
    end
end

puts relevant_lines