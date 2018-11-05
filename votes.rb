lines = []
File.open("votes.txt") do |votes_file|
    lines = votes_file.readlines
end

votes = Hash.new(0)
lines.each do |line|
    name = line.chomp
    name.upcase!    
    votes[name] += 1    
end

votes.each do |name, votes_number|
    formatted_name = name.split.map { |part| part.capitalize }.join(" ")
    puts "Candidate #{formatted_name} got #{votes_number} votes"
end