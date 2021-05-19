class MoviesController < ApplicationController
  def index
    movies = Movie.all
    movie = movies.select(english: :t)
    render json: movies.as_json
  end

  def create
    movie = Movie.new(
    title: params[:title],
    year: params[:year],
    plot: params[:plot],
    director: params[:director],
    english: params[:english]
    )
    if movie.save
      render json: movie.as_json
    else
      render json: {errors: movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie.as_json   
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english]  || movie.english
    if movie.save
      render json: movie.as_json
    else
      render json: {errors: movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.delete
    render json: movie.as_json
  end
  
end
