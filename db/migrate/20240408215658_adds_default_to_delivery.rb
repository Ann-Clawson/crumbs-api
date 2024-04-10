class AddsDefaultToDelivery < ActiveRecord::Migration[7.0]
  def change
    change_column_default :orders, :delivery_status, from: nil, to: "tbd"
  end
end
