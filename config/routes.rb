Rails.application.routes.draw do
  get "/actor_by_id", controller: "actors", action: "actor_by_id"
  get "individual_movie", controller: "movies", action: "individual_movie"
  get "all_movies", controller: "movies", action: "all_movies"
  get "movies_after_2017", controller: "movies", action: "movies_after_2017"

  # Params homework - adds routes for query, segment, body parameters
  # Query param: 
  # This method expects a first_name and last_name. For example:
  # ?first_name=benedict&last_name=Cumberbatch
  get "actor_by_full_name" => "actors#actor_by_full_name"
  # Same as above but using two segments to pass parameters
  get "actor_by_full_name_seg/:first_name/:last_name" => "actors#actor_by_full_name"
  # Same scenario, but using post to pass first_name and last_name
  post "actor_by_full_name" => "actors#actor_by_full_name"
end
