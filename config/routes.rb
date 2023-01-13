Rails.application.routes.draw do
  resources :reflection_questions
  resources :exit_tickets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users
  resources :exit_tickets
  resources :reflection_questions
end
