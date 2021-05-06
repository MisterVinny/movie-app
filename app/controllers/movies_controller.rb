class MoviesController < ApplicationController

  def individual_movie
    movie = Movie.find_by(id: 5)
    render json: movie.as_json
  end

  def all_movies
    movies = Movie.all
    render json: movies
  end
  
  def movies_after_2017
    movies = Movie.where("year > '2017'")
    render json: movies
  end
  
end
