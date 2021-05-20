class Actor < ApplicationRecord
  validates :first_name, length: {minimum: 3}
  validates :last_name, length: {minimum: 3}
  validates :known_for, presence: true
  validates :age, numericality: { greater_than: 13}

  belongs_to :movie
end
