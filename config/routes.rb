Rails.application.routes.draw do
  get "/single_actor_path", controller: "actors", action: "single_actor_method"
end
