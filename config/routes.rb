Rails.application.routes.draw do

  # Restful actors routes
  get "/actors" => "actors#index"
  post "/actors" => "actors#create"
  get "/actors/:id" => "actors#show"
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"

  # Restful movies routes
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  patch "movies/:id" => "movies#update"
  delete "movies/:id" => "movies#destroy"
  
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end