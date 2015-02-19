class PostsController < ApplicationController
	def index
		@post = Post.all.order('created_at DESC')
	end

	def new
		@post = Post.new
	end

# This allows us when we are on the post page to save create and save a post
	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

def show
	@post = Post.find(params[:id])
end


private
	def post_params
		params.require(:post).permit(:title, :body)
	end
end


