class CommentsController < ApplicationController
	
	http_basic_authenticate_with name: 'dhh' password: 'secret',
only: :destroy


	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)
		
		####Why do we say (@article) at the end here?
		redirect_to article_path(@article)
	end

	###We can't simply refer to the @article instance defined in Create?
	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comment
		@comment.destroy
		redirect_to article_path(@article)
	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end
end
