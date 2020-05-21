Rails.application.routes.draw do
  get 'bookings/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # POINTS TO CHECKOUT
  # Can we write line 16 or should we write line 14?
  # Can we write 'as: :search'
  # how do we write this 'guide/bookings#index? Guide::BookingsController


  # REFACTORED ROUTES - WARNING: I don't know how to code the User Story 7
  # root to: 'pages#home'

  resources :guides, only: [:index, :show, :new, :create ] do
    resources :bookings, only: :create
  end

  # namespace :bookings do
  #   resources :guide
  # end

  # resources :users, only: [:] do
  #   resources :bookings, only: :create
  # end

  resources :bookings, only: :index



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


