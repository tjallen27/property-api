class AuthenticationsController < ApplicationController
  skip_before_action :authenticate_user!

  def register
    # Create a new user with an ID
    user = User.new(user_params)
    # If the user saves, render it to JSON and give the all clear
    if user.save
      render json: user, status: :ok
    # Otherwise render a JSON Error and state it's unprocessable
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def login

    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      token = Auth.issue({ id: user.id })
      render json: { token: token, user: UserSerializer.new(user) }, status: :ok
    else
      render json: { errors: ["Invalid login credentials."] }, status: 401
    end
  end

  private
  def user_params
    Hash.new.merge! params.slice(:username, :email, :password, :password_confirmation)
  end
end
