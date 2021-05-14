class ActorsController < ApplicationController

  def shared_json_out(actor) # Returns error if validations fail
    if actor.valid?
      # Happy action
      render json: actor.as_json
    else
      # Sad action
      render status: 422, json: {
        message: "Movie not updated, invalid input.",
        errors: actor.errors.full_messages.as_json
      }
    end
  end
  
  # Restful Actor actions
  def index
    actors = Actor.all
    render json: actors.as_json
  end
  
  def create
    actor = Actor.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age]
    })
    actor.save
    shared_json_out(actor) # Returns appropriate render if no errors
  end
  
  def show
    actor = Actor.find(params[:id])
    render json: actor.as_json
  end
  
  def update
    actor = Actor.find(params[:id])
    actor.update({
      first_name: params[:first_name] || actor.first_name,
      last_name: params[:last_name] || actor.last_name,
      known_for: params[:known_for] || actor.known_for,
      gender: params[:gender] || actor.gender,
      age: params[:age] || actor.age
    })
    shared_json_out(actor) # Returns appropriate render if no errors
  end
    
  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "Record for #{actor.first_name} #{actor.last_name} has been destroyed."}
  end
  
end