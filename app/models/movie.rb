class Movie < ApplicationRecord
  validates :year, numericality: { equal_to: 4 } 
  validates :title, uniqueness: true
  validates :plot, length: { minimum: 7 } 
end
