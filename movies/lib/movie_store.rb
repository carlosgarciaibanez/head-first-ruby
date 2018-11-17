require 'yaml/store'

class MovieStore

    def initialize(filename)
        @store = YAML::Store.new(filename)
    end

    def save(movie)
        @store.transaction do
            unless movie.id
                highest_id = @store.roots.max || 0
                movie.id = highest_id + 1
            end
            @store[movie.id] = movie
        end
    end

end