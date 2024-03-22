Rails.application.routes.draw do
  resources :lovenotes
  resources :mementos

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root 'pages#home'
  get  '/about',         to: 'pages#about'
  get  '/how-it-works',  to: 'pages#how_it_works'
  get  '/contact',       to: 'pages#contact'
  get  '/start_memento', to: 'pages#start_memento'
end
