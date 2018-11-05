lines = []
File.open("reviews.txt") do |reviews_file|
    lines = reviews_file.readlines
end

puts lines.length