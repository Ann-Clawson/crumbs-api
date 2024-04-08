class CooksController < ApplicationController
  def create
    @cook = Cook.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      inventory: params[:inventory],
    )
    if @cook.save
      render json: { message: "Cook created successfully" }, status: :created
    else
      render json: { errors: @cook.errors.full_messages }, status: :bad_request
    end
  end
end
