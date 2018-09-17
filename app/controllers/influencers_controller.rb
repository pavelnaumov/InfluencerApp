class InfluencersController < ApplicationController
  
  def index
    @influencers = User.all.where(role: 0)
  end

  def show
    @influencer = User.find(params[:id])
  end
end
