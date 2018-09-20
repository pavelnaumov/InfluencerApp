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
    @influencer = User.find(params[:influencer_id])
    @user = current_user
    media_type = @influencer.media_type
    user_id = @influencer.id
    client_id = @user.id
    job = Job.create!(media_type, :price, :content_type, :description, user_id, :youtube_vid, :youtube_ref, :instagram_story, :instagram_post, client_id)
  end
end


# TODO: Have to fix this -- make the forms and job creation working
