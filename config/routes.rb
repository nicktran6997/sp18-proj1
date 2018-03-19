Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch "root", to: "pokemons#capture", as: "capture"
  patch "trainer", to: "pokemons#damage", as: "damage"
  get "/pokemons/new", to: "pokemons#new"
  post "/pokemons/new", to: "pokemons#create"
end
