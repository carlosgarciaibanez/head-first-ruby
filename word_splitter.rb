# This class allows you to preform various operations
# on the words in a string.
class WordSplitter

    include Enumerable 

    # The string to split into words.
    attr_accessor :string

    # Passes each word in the string to a block, one
    # at a time.
    def each
        @string.split(" ").each do |word|
            yield word
        end
    end

end

splitter = WordSplitter.new
splitter.string = "one two three four"

splitter.each do |word|
    puts word
end

start_with_t = splitter.find_all { |word| word.start_with?("t") }
puts "Start with 't': #{start_with_t.join(', ')}"

three_letters_only = splitter.reject { |word| word.length != 3 }
puts "Three letters only: #{three_letters_only.join(', ')}"

lengths = splitter.map { |word| word.length }
puts "The lengths of thee strings are: #{lengths.join(', ')}"