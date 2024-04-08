class CartedCooksController < ApplicationController
  def create
    @carted_cook = CartedCook.new(
      customer_id: params[:customer_id],
      cook_id: params[:cook_id],
      status: params[:status],
      order_id: params[:order_id],
    )
    if @customer.save
      render json: { message: "Cook created successfully" }, status: :created
    else
      render json: { errors: @cook.errors.full_messages }, status: :bad_request
    end
  end
end
