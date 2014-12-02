class UsersController < ApplicationController

 def index
    @users = User.all
  end

  def new 
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

######################################
## HTTP POST
######################################

  def create
    @user = User.create
  end

  def update
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

end