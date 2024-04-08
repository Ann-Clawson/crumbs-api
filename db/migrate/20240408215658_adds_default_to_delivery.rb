class AddsDefaultToDelivery < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :delivery_status, :integer
  end
end
