class ActorsController < ApplicationController

  def actor_by_full_name
    first_name = params[:first_name].downcase.capitalize
    last_name = params[:last_name].downcase.capitalize
    actor = Actor.where("first_name = '#{first_name}' AND last_name = '#{last_name}'")
    render json: actor.as_json
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
      known_for: params[:known_for]
    })
    actor.save
    render json: actor.as_json
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
      known_for: params[:known_for] || actor.known_for
      })
      render json: actor.as_json
    end
    
  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "Record for #{actor.first_name} #{actor.last_name} has been destroyed."}
  end
  
end