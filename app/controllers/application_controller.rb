class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  def current_user
    User.find_by_id session[:user_id]
  end

  before_action :authencation
  def authencation
    if current_user.blank?
      redirect_to login_path, notice: "Login first!"
    end
  end

  def login_user(user)
    session[:user_id] = user.id
  end

  def logout_user
    session[:user_id] = nil
  end
end
