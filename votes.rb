lines = []
File.open("votes.txt") do |votes_file|
    lines = votes_file.readlines
end

votes = {}
lines.each do |line|
    name = line.chomp
    if votes[name]
        votes[name] += 1
    else
        votes[name] = 1
    end
end
puts votes