class SessionsController < ApplicationController

  skip_before_action :auth

  def index
    if signed_in?
      redirect_to votes_path
    end
  end

  def logout
    session[:login] = nil
    reset_session
    redirect_to root_path, success: "ログアウトしました"
  end

  def login
  end

  def callback
    data = request.env['omniauth.auth']
    user = User.find_or_create_by(id: User.generate_id(data[:uid])) do |u|
      u.tw_uid = data[:uid]
      u.tw_screen_name = data[:info][:nickname]
      u.tw_name = data[:info][:name]
      u.name = data[:info][:name]
      u.tw_token = data[:credentials][:token]
      u.tw_secret = data[:credentials][:secret]
    end
    session[:login] = {
      id: user.id,
      sc_name: user.tw_screen_name,
      name: user.name
    }
    redirect_to votes_path, success: "ログインしました"
  end
end