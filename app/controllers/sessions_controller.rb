class SessionsController < ApplicationController
  def index
  end

  def logout
  end

  def login
  end

  def callback
    data = request.env['omniauth.auth']
    User.find_or_create_by(tw_uid: data[:uid]) do |u|
      u.tw_screen_name = data[:info][:nickname]
      u.tw_name = data[:info][:name]
      u.name = data[:info][:name]
      u.from = 'twitter'
      u.tw_token = data[:credentials][:token]
      u.tw_secret = data[:credentials][:secret]
    end
    redirect_to votes_path, success: "ログインしました"
  end
end