class CommentsController < ApplicationController
	def index
		@comments = Comment.all
		@comment = Comment.new
	end

	def new
		@comment = Comment.new
	end

	def create
		Comment.create(comment_params)
		redirect_to root_path
	end

	private

	def comment_params
		params.require(:comment).permit(:name, :description)
	end
end
