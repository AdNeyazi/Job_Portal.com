# app/controllers/job_applications_controller.rb
class JobApplicationsController < ApplicationController
  def index
    @applications = current_user.admin? ?
      JobApplication.all :
      current_user.job_applications
    authorize @applications
    render :index
  end

  def show
    @application = JobApplication.find(params[:id])
    authorize @application
    render :show
  end
end