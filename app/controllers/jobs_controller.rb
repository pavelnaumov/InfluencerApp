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
    @user = current_user
    if @user.role == "influencer"
      @job = @user.influencer_jobs.find(params[:id])
    else
      @job = @user.client_jobs.find(params[:id])
      @influencer = @job.user
      @client = @job.client
    end
  end

  def create
    # Defining all the info here -- best practice
    @influencer = User.find(params[:influencer_id])
    @user = current_user
    @job = Job.new(job_params)
    @job.user = @influencer # This defines the influencer that belongs to the job
    @job.client = @user # This defines the client that that belongs to the job
    @job.save

    redirect_to new_order_path(@job)

    

  end

  private

  def job_params
    params.require(:influencer_job).permit(:instagram_post, :instagram_story, :youtube_vid, :youtube_ref, :description, :price )
  end
end



# TODO: Have to fix this -- make the forms and job creation working
