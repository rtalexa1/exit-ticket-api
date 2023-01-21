Rails.application.routes.draw do
  resources :reflection_questions
  resources :standards_based_questions
  resources :exit_ticket_questions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users do
    resources :exit_tickets
  end

  resources :standards_based_questions, only: [:index, :show]
end
