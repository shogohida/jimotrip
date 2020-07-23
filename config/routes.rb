Rails.application.routes.draw do
  namespace :guide do
    get 'bookings/index'
  end
  get 'bookings/index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :guides, only: [:index, :show, :new, :create ] do
    resources :bookings, only: :create
  end

  namespace :guide do
    resources :bookings, only: :index, as: :guide_bookings
  end


  resources :bookings, only: [:index, :update]



  # # DETAILED ROUTES

  # # User Story 1
  # root to: 'pages#home'

  # # User Stories 2
  # get '/search', to: 'guides#search', as: :search_guides

  # # User Story 3
  # get '/guides/:id', to: 'guides#show', as: :guide

  # # User Story 4 - DON'T USE

  # # User Story 5
  # post '/guides/:guide_id/bookings', to: 'bookings#create'

  # # User Story 6
  # get '/bookings', to: 'bookings#index', as: :bookings

  # # User Story 7 - QUESTION - what is the correct syntax for guide/bookings controller?
  # get '/guide/bookings', to: 'guide/bookings#index', as: :guide_bookings

  # # User Story 8  - DON'T USE
  # # User Story 9  - DON'T USE

  # # User Story 10
  # get 'guides/new', to: 'guides#new', as: :new_guide

  # # User Story 11
  # post 'guides', to: 'guides#create'

end
