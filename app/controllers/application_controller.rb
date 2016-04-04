class ApplicationController < ActionController::Base
	# autocomplete :name
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  @subs = Sub.all

  # if params[:search]
  # 	@subs = Sub.search(params[:search]).order("created_at DESC")
  # else
  # 	@subs = Sub.all.order('created_at DESC')
  # end
end
