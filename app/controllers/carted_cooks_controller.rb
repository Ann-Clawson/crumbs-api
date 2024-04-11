class CartedCooksController < ApplicationController
  def create
    @carted_cook = CartedCook.new(
      customer_id: params[:customer_id],
      cook_id: params[:cook_id],
      order_id: params[:order_id],
    )
    if @carted_cook.save
      render json: { message: "Carted Cook created successfully" }, status: :created
    else
      render json: { errors: @carted_cook.errors.full_messages }, status: :bad_request
    end
  end
end
