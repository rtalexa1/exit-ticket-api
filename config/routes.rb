Rails.application.routes.draw do
  devise_for :users,
  controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  get "/member-data", to: "members#show"

  devise_scope :user do
    get 'get_tickets' => 'exit_tickets#index'
  end

  resources :exit_tickets
  resources :standards_based_questions, only: [:index, :show]
  resources :standards_based_exit_ticket_questions
  resources :reflection_questions
  resources :reflection_exit_ticket_questions
end
