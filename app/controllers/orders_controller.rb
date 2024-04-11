class OrdersController < ApplicationController
  def create
    @order = Order.new(
      customer_id: params[:customer_id],
      total: params[:total],
      payment_type: params[:payment_type],
    )
    if @order.save
      render json: { message: "Order created successfully" }, status: :created
    else
      render json: { errors: @order.errors.full_messages }, status: :bad_request
    end
  end
end
