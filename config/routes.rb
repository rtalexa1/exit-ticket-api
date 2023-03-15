Rails.application.routes.draw do
  devise_for :users,
  controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  get "/member-data", to: "members#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :users do
  #   resources :exit_tickets
  # end

  resources :standards_based_questions, only: [:index, :show]
  resources :standards_based_exit_ticket_questions
  resources :reflection_questions
  resources :reflection_exit_ticket_questions
end
