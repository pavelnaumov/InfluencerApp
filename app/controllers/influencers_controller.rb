class InfluencersController < ApplicationController

  def index
    @generations = User.target_generations
  end

  def index_complete
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

  ## Methods and routes for different categories of influencers

  def baby_boomers
    @influencers = User.all.where(role: 0, target_generation: 'baby_boomer')
  end

  def generation_x
    @influencers = User.all.where(role: 0, target_generation: 'generation_x')
  end

  def millennials
    @influencers = User.all.where(role: 0, target_generation: 'millennial')
  end

  def generation_z
    @influencers = User.all.where(role: 0, target_generation: 'generation_z')
  end
end