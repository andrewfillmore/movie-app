Rails.application.routes.draw do
  get "/single_actor_query", controller: "actors", action: "single_actor_query"

  get "/single_actor_params/:single_actor", controller: "actors", action: "single_actor_params"

  post "/single_actor_fullname", controller: "actors", action: "single_actor_fullname"

  get "/all_actor_path", controller: "actors", action: "single_actor_method"

  get "/single_movie_path", controller: "movies", action: "single_movie_method"

  get "/all_movie_path", controller: "movies", action: "all_movie_method"

end
