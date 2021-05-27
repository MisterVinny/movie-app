class MovieGenre < ApplicationRecord
  validates :movie_id, presence: true, numericality: { only_integer: true }
  validates :genre_id, presence: true, numericality: { only_integer: true }
  belongs_to :genre
  belongs_to :movie
end