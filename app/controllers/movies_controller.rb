class MoviesController < ApplicationController
  def single_movie_method
    render json: Movie.find_by(id:1)
  end
  def all_movie_method
    render json: Movie.all.as_json
  end
end
