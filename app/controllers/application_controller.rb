class ApplicationController < ActionController::Base

  add_flash_types :success, :info, :warning, :danger
  before_action :auth

  def auth
    unless session[:login].present?
      redirect_to root_path, error: "この画面にはログインが必要です"
    end
  end

  def signed_in?
    session[:login].present?
  end

  def current_user
    User.find_by(id: session[:login]['id'])
  end
  
end
