class PostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]
	# before_action :set_current_user, only: [:create]

	def index
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		redirect_to users_index_path
		# @post.user = User.find(params[:id])
		# if @post.save
		# 	redirect_to users_index_path
		# else
		# 	nil
		# end	
	end

	def update
	end

	def destroy
	end

	def edit
	end

	private
	def post_params
		params.require(:post).permit(:message)
	end

	def set_post
		@post = Post.find(params[:id])
	end

	def set_current_user
		@user = User.find(params[:id])
	end

end
