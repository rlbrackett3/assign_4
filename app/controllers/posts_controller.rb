class PostsController < ApplicationController

######################################
## HTTP GET
######################################

  def index
    @posts = Post.all
    # @user = User.find(params[:user_id])
    # @posts = @user.posts.all
  end

  def new 
    @post = User.where(params[:id]).post.new # This should read as params[:user_id]
  end

  def edit
    @user = User.post.find(params[:id])
    # @user = User.find(params[:user_id])
    # @post = @user.posts.find(params[:id])
  end

  def show
    @user = User.post.find(params[:id])
    # @user = User.find(params[:user_id])
    # @post = @user.posts.find(params[:id])
  end

  ######################################
  ## HTTP POST
  ######################################

  def create
    @post = User.post.create
    # @user = User.find(params[:user_id])
    # @post = @user.posts.create
  end

  def update
    @user = User.find(params[:id])
    # @user = User.find(params[:user_id])
    # @post = @user.posts.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    # @user = User.find(params[:user_id])
    # @post = @user.posts.find(params[:id])
    # @post.destroy
  end

end
