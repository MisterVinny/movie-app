Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actor_by_id", controller: "actors", action: "actor_by_id"
  get "individual_movie", controller: "movies", action: "individual_movie"
  get "all_movies", controller: "movies", action: "all_movies"
  get "movies_after_2017", controller: "movies", action: "movies_after_2017"
end
