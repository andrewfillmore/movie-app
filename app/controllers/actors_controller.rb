class ActorsController < ApplicationController
  def single_actor_query
    input = params[:single_actor_query]
    render json: {message: "The actor #{input} is very good."}

  end

  def single_actor_params
    user_input = params[:single_actor]
    render json: {message: "The actor you've chosen is #{user_input}"}
  end

  def single_actor_fullname
    first_name = params[:single_actor_first]
    last_name = params[:single_actor_last]
    render json: {message: "You have chosen the actor #{first_name} #{last_name}"}
    
  end
  
end
