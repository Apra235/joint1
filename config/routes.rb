Rails.application.routes.draw do
  #get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/news'

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"




  delete "Logout", to: "sessions#destroy"
  
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
