class UsersController < ApplicationController
  def index
    @users = User.includes(:job_applications)
    authorize @users
    render :index
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    render :show
  end
end