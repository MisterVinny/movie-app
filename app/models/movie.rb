class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true, numericality: { greater_than: 1887 }
  validates :plot, presence: true, length: { in: 15..500 }
  validates :director, presence: true, length: { minimum: 2 }

  has_many :actors # Returns array of many actors.

end
