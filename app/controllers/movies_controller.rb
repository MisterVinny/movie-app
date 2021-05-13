class MoviesController < ApplicationController

  # Restful movies actions

  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def create
    movie = Movie.new({
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
      })
    movie.save
    render json: movie.as_json
  end
    
  def show
    movie = Movie.find(params[:id])
    render json: movie.as_json
  end
  
  def update
    movie = Movie.find(params[:id])
    movie.update({
      title: params[:title] || movie.title,
      year: params[:year] || movie.year,
      plot: params[:plot] || movie.plot,
      director: params[:director] || movie.director,
      english: params[:english] || movie.english
    })
    render json: movie.as_json
  end
    
  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "The record for the movie, #{movie.title}, has been destroyed."}  
  end
  
end
