class CommentsController < ApplicationController
	
# 	http_basic_authenticate_with name: '' password: '',
# only: :destroy


	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)
		
		redirect_to article_path(@article)
	end


	###We can't simply refer to the @article instance defined in Create?
	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comment
		@comment.destroy
		redirect_to article_path(@article)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end
end
