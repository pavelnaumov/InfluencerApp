class InfluencersController < ApplicationController

  def index
    if params[:query].present?
      sql_query = "username ILIKE :query OR cast(media_type as text) ILIKE :query OR content_type ILIKE :query"
      # @influencers = User.all.where(sql_query, query: "%#{params[:query]}%")
      @influencers = User.all.where(role: 0).where(sql_query, query: "%#{params[:query]}%")
    else
      @influencers = User.all.where(role: 0)
    end
  end

  def show
    @influencer = User.find(params[:id])
  end
end