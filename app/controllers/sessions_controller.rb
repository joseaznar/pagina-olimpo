class SessionsController < ApplicationController
  def new
  	if sign_in?
  		redirect_to root_path
  	end
  end

  def create
  	sign_in_as params[:session][:email], params[:session][:password]
  	if sign_in?
  	  redirect_to new_properties_path
  	else
  	  redirect_to root_path
  	end
  end  
end
