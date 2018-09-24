class JobsController < ApplicationController

  def index
    @user = current_user

    if current_user.role == "client"
      @jobs = current_user.client_jobs
    else
      @jobs = current_user.influencer_jobs
    end
  end

  def new
    @job = Job.new
    @user = current_user
    @influencer = User.find(params[:influencer_id])
  end

  def show
  end

  def create
    @influencer = User.find(params[:influencer_id])
    @user = current_user
    @influencer_job = Job.create!(job_params)

  end

  private

  def job_params
    params.require(:job).permit(:job, :influencer_id )
  end
end



# TODO: Have to fix this -- make the forms and job creation working
