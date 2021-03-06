Rails.application.routes.draw do
  resources :styles
  resources :beer_clubs
  resources :users do
    post 'close', on: :member
    post 'open', on: :member
  end
  resources :beers
  resources :breweries do
    post 'toggle_activity', on: :member
  end
  
  resources :memberships
  
  get '/', to: 'breweries#index'
  get 'kaikki_bisset', to: 'beers#index'

  resources :ratings, only: [:index, :new, :create, :destroy]
  #get 'ratings', to: 'ratings#index'
  #get 'ratings/new', to:'ratings#new'
  #post 'ratings', to: 'ratings#create'
  
  resource :session, only: [:new, :create, :destroy]
  ##get 'session', to: 'session#index'
  #get 'sessions/new', to:'sessions#new'

  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy'
  
  resources :places, only: [:index, :show]
  # get 'places', to:'places#index'
  # get 'places/:id', to:'places#show'

  post 'places', to:'places#search'

  get 'beerlist', to:'beers#list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
