class CookiesController < ApplicationController
  def create
    @cookie = Cookie.create(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      inventory: params["inventory"],
    )
    if @cookie.valid?
      render :show
    else
      render json: { errors: @cookie.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
