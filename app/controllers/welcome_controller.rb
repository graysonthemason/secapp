class WelcomeController < ApplicationController
  def index
    @subs = Sub.all
  if params[:search]
    @subs = Sub.search(params[:search]).order("created_at DESC")
  else
    @posts = Sub.all.order('created_at DESC')
  end
    # if session[:user_id]
    #   user = User.find_by(id: session[:user_id])
    #   redirect_to(user_path(user))
    # else
    #   redirect_to(login_path)
    # end
  end
end
