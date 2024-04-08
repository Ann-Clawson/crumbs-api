class ChangeTotalDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :total, :decimal, using: "total::numeric(5,2)"
  end
end
