class Movie < ApplicationRecord
  # validates :year, numericality: { equal_to: 4 } 
  validates :title, uniqueness: true
  validates :plot, length: { minimum: 7 } 

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  
end
