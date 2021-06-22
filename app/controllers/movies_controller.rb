class MoviesController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def shared_json_out(movie) # Returns error if validations fail
    if movie.valid?
      # Happy action
      render json: movie
    else
      # Sad action
      render status: 422, json: {
        message: "Movie not updated, invalid input.",
        errors: movie.errors.full_messages.as_json
      }
    end
  end

  # Restful movies actions
  def index
    movies = Movie.all
    render json: movies
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
    shared_json_out(movie) # Returns appropriate render if no errors
  end
    
  def show
    movie = Movie.find(params[:id])
    render json: movie
  end
  
  def update
    movie = Movie.find(params[:id])
    movie.update({
      title: params[:title] || movie.title,
      year: params[:year] || movie.year,
      plot: params[:plot] || movie.plot,
      director: params[:director] || movie.director,
      english: params[:english]
    })
    shared_json_out(movie) # Returns appropriate render if no errors
  end
    
  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "The record for the movie, #{movie.title}, has been destroyed."}  
  end
  
end
