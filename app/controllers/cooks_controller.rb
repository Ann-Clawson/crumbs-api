class CooksController < ApplicationController
  def create
    @customer = Customer.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      inventory: params[:inventory],
    )
    if @customer.save
      render json: { message: "Cook created successfully" }, status: :created
    else
      render json: { errors: @cook.errors.full_messages }, status: :bad_request
    end
  end
end
