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

  get "/" => "pages#index"


  resources :messages do
    resources :replies
  end
  
  resources :topics

  resources :users

  # resources :authentications
  get "authentications/new" => "authentications#new"
  get "authentications/newuser" => "authentications#newuser"
  post "authentications" => "authentications#create"
  # delete "authentications" => "authentications#destroy"
  get "/logout", to: "authentications#destroy", as: "logout"


end
