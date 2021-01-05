Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  ## get '/cocktails', to: 'cocktails#index'
  ## post '/cocktails', to: 'cocktails#create'

  ## get '/cocktails/new', to: 'cocktails#new'
  ## get '/cocktails/:id', to: 'cocktails#show', as: 'cocktail'


  ## get 'cocktails/:id/doses', to: 'doses#new', as: 'doses_new'
  
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
    resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
end
