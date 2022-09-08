Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/cats" => "cats#index"
  get "/cats/new" => "cats#new"
  get "/cats/:id/edit" => "cats#edit"
  get "/cats/:id" => "cats#show"
  post "/cats" => "cats#create"
  patch "/cats/:id" => "cats#update"
end
