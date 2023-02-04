Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users
  resources :exit_tickets
  resources :standards_based_questions, only: [:index, :show]
  resources :standards_based_exit_ticket_questions
  resources :reflection_questions
  resources :reflection_exit_ticket_questions
end
