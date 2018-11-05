lines = []
File.open("votes.txt") do |votes_file|
    lines = votes_file.readlines
end

votes = Hash.new(0)
lines.each do |line|
    name = line.chomp
    votes[name] += 1    
end
puts votes