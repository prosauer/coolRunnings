class UsersController < ApplicationController
  allow_unauthenticated_access only: [ :new, :create ]
  def new
    @user = User.new
  end

  def create
    parameters = params.expect(user: [:name, :email_address, :password, :password_confirmation])
    @user = User.create! parameters
    start_new_session_for @user
    redirect_to after_authentication_url
  end

  def show
    @user = User.find(params.expect(:id))
  end
end
