require 'sinatra'
require 'movie'

get('/movies') do
    @movies = ["Jaws", "Psicosis", "Terminator"].map do |title|
        movie = Movie.new
        movie.title = title
        movie
    end
    erb :index
end

get('/movies/new') do
    erb :new
end