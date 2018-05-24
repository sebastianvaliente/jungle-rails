class User::RegisterController < ApplicationController

  # has_secure_password

  def create
    user = User.new(first_name: params[:user][:name], last_name: params[:user][:last_name], email: params[:user][:email], password: params[:user][:password])
    user.save
    session[:user_id]  = user.id
    redirect_to "/"
  end

  def index
  end

end
