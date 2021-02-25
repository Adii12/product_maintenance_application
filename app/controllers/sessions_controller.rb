class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    

    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    elsif User.first.nil?
      new_user = User.create(name: params[:name], password: params[:password])
      session[:user_id] = new_user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_index_url, notice: "Logged out"
  end
end
