Rails.application.routes.draw do
  get "actor_by_full_name" => "actors#actor_by_full_name"

  # Restful Actor routes
  get "/actors" => "actors#index"
  post "/actors" => "actors#create"
  get "/actors/:id" => "actors#show"
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"

end
