class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :total
      t.string :payment_type
      t.string :delivery_status, default: "tbd"

      t.timestamps
    end
  end
end
