class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  	
  	def index
  		@articles = Article.all
  	end

  	def show
  		@article = Article.find(params[:id])
  	end

  	def new
  	end

  	#render method with key=>plain; value=>params[:article].inspect
  	#params method is an object
  	def create
  		#We define article_params in 'private'
  		@article = Article.new(article_params)
  		
  		@article.save
  		redirect_to @article
  	end

  	private
  		def article_params
  			params.require(:article).permit(:title, :text)
			end

end
