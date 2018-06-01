Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get "/" =>"articles#home"
  resources :articles
  
  get "signup", to: "users#new"


  resources :users, except: [:new]
  
  
end
