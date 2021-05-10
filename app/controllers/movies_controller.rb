class MoviesController < ApplicationController
  def single_movie_method
    render json: Movie.find_by(id:1)
  end
  def all_movie_method
    require "http"
    puts "Enter the id of the movie you'd like to see"
    id = gets.chomp.to_i
 

    response = HTTP.get("http://localhost:3000/all_movie_path?id=#{id}")


    render json: response.parse
  end
end
