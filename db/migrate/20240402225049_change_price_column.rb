class ChangePriceColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :cookies, :price, :decimal, using: "price::numeric(5,2)"
  end
end
