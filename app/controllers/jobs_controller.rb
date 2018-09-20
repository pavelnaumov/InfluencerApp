class JobsController < ApplicationController
  def index
  end

  def new
    @job = Job.new
    @user = current_user
    @influencer = User.find(params[:influencer_id])
  end

  def show
  end

  def create
  end
end
