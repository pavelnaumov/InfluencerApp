class OrdersController < ApplicationController

  def new
    @job = Job.last
    @user = current_user
    @influencer = @job.user
    @job.user = @influencer
    @job.client = @user
    @order  = Order.create!(job_title: @job.job_title, amount: @job.price, state: 'pending', user: current_user, influencer_id: @job.user.id)
  end

  def show
   @order = current_user.orders.where(state: 'paid').find(params[:id])
   @job = Job.last
   @user = current_user
   @influencer = @job.user
   @job.user = @influencer
   @job.client = @user
 end

 def create
  job = Job.find(params[:job_id])
  influencer = job.user
  order  = Order.create!(job_title: job.job_title, amount: job.price, state: 'pending', user: current_user, influencer_id: job.user.id)

  redirect_to new_order_payment_path(order)
end
end
