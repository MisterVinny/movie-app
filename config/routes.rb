Rails.application.routes.draw do
  get "/actor_by_id", controller: "actors", action: "actor_by_id"
  get "individual_movie", controller: "movies", action: "individual_movie"
  get "all_movies", controller: "movies", action: "all_movies"
  get "movies_after_2017", controller: "movies", action: "movies_after_2017"

  # Params homework - adds routes for query, segment, body parameters
  # Query param:
  get "actor_by_full_name" => "actors#actor_by_full_name"
end
