class ActorsController < ApplicationController
  def single_actor_method
    render json: Actor.find_by(id:1)
  end
  
end
