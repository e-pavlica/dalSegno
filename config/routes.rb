DalSegno::Application.routes.draw do
  #basic CRUD setup
  # get "/" => "messages#index"
  # get "/messages" => "messages#index"
  # get "messages/new" => "messages#new"
  # get "messages/:id" => "messages#show"
  # get "replies/new" => "replies#new"

  # post "replies" => "replies#create"
  # post "messages" => "messages#create"
  # delete "/:id" => "messages#destroy"

  resources :messages do
    resources :replies
  end
  
  resources :topics

  resources :users

  get "authentications/new" => "authentications#new"
  post "authentications" => "authentications#create"



end
