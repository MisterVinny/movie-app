class ActorsController < ApplicationController

  def actor_by_id
    actor = Actor.find_by(id: 2)
    render json: {Actor_by_id_2: actor}
  end

  def actor_by_full_name
    first_name = params[:first_name].downcase.capitalize
    last_name = params[:last_name].downcase.capitalize
    actor = Actor.where("first_name = '#{first_name}' AND last_name = '#{last_name}'")
    render json: actor.as_json
  end
  
end