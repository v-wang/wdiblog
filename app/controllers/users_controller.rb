class UsersController < ApplicationController
  before_action :set_current_user, only: [:show]
  def index
  	@users = User.all
    @post = Post.new

    @posts = Post.all

  end

  def show
  end
 
  private
  def set_current_user
  	@user = User.find(params[:id])
  end
end
