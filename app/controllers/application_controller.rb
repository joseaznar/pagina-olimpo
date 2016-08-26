  class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def sign_in_as(email,password)
    session[:current_email] = email
    session[:current_password] = password
  end

  def sign_in?
    current_user.signed_in?
  end 

  def current_user
    Admin.new(session[:current_emapil],session[:current_password])
  end
end
