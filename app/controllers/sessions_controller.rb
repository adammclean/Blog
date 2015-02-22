class SessionsController < ApplicationController
  def new
  end

  #In railscast '#' is root_url; but we need to change that
  def create
  	user = User.authenticate(params[:email], params[:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to '#', :notice => "Logged in!"
  	else
  		flash.now.alert = "Invalid email or password"
  		render "new"

  end
