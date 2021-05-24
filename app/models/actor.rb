class Actor < ApplicationRecord
  validates :first_name, presence: true, length: { minimum: 2}
  validates :last_name, presence: true, length: { minimum: 2}
  validates :known_for, presence: true
  validates :age, presence: true, numericality: { greater_than: 13}

  belongs_to :movie # Returns hash of a single movie.

  def movie_few_fields
    # movie = Movie.where("id = ?", movie_id).select(:id, :title, :plot) # Could use pluck for an array of this info without an id.
    movie = Movie.where("id = ?", movie_id).select(:id, :title, :plot) #maybe use slice - look it up
  end
  
end