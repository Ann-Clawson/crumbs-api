class CustomersController < ApplicationController
  def create
    @customer = Customer.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
    )
    if @customer.save
      render json: { message: "Customer created successfully" }, status: :created
    else
      render json: { errors: @customer.errors.full_messages }, status: :bad_request
    end
  end
end
