module SessionsHelper
  def current_user #現在ログインしてるユーザーを取得
    @current_user ||= User.find_by(id: session[:user_id]) 
  end

  def logged_in? #ユーザーを取得しているか
    !!current_user
  end
end
