class SessionsController < ApplicationController
  def new
  end
  def create
    user2 = User2.find_by(email: params[:session][:email].downcase)
    if user2 && user2.authenticate(params[:session][:password])
      session[:user2_id] = user2.id
      redirect_to blogs_path
      # ログイン成功した場合
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end
  def destroy
    session.delete(:user2_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to new_session_path
  end
end
