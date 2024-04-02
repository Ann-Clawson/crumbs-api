class ChangePriceDataTypeAgain < ActiveRecord::Migration[7.0]
  def change
    change_column :cooks, :price, :decimal, precision: 9, scale: 2
  end
end
