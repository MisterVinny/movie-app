class ActorsController < ApplicationController

  def actor_by_id
    actor = Actor.find_by(id: 2)
    render json: {Actor_by_id_2: actor}
  end
  
end