class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true, numericality: { greater_than: 1887 }
  validates :plot, presence: true, length: { in: 15..500 }
  validates :director, presence: true, length: { minimum: 2 }

  has_many :actors # Returns array of many actors.
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    movie.self.genres.map {|genre| genre.name}
    # genre_array = "wutwut"
    # genre_array
  end
  
end