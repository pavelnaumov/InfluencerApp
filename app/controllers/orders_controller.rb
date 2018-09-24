class OrdersController < ApplicationController
  def create
    job = Job.find(params[:job_id])
    order  = Order.create!(job_title: job.sku, amount: job.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end
end
