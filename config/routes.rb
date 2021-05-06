Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actor_by_id", controller: "actors", action: "actor_by_id"
end
