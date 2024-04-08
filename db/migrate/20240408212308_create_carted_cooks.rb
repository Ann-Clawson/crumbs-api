class CreateCartedCooks < ActiveRecord::Migration[7.0]
  def change
    create_table :carted_cooks do |t|
      t.integer :customer_id
      t.integer :cook_id
      t.string :status, default: "carted"
      t.integer :order_id

      t.timestamps
    end
  end
end
