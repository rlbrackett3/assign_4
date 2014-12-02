class PostsController < ApplicationController

######################################
## HTTP GET
######################################

  def index
    @posts = Post.all
  end

  def new 
    @post = User.where(params[:id]).post.new
  end

  def edit
    @user = User.post.find(params[:id])
  end

  def show
    @user = User.post.find(params[:id])
  end

  ######################################
  ## HTTP POST
  ######################################

  def create
    @post = User.post.create
  end

  def update
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

end