class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  	
  	def new
  	end

  	#render method with key=>plain; value=>params[:article].inspect
  	#params method is an object
  	def create
  		render plain: params[:article].inspect
  	end
end
