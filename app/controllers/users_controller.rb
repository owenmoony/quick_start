class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def create
    @user = User.create(params[:user])
    render :show
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])
    render :show
  end

end