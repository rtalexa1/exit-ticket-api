# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  respond_to :json

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  private
  def respond_with(resource, options = {})
    if resource.persisted?
      render json: {
        status: 200, 
        message: "Signed up successfully", 
        user: current_user 
      }, status: :ok
    else
      render json: {
        status: 422,
        message: "User could not be created",
        errors: resource.errors.full_messages
      }, status: :unprocessable_entity
    end
  end
end
