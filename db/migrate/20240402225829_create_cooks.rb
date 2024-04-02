class CreateCooks < ActiveRecord::Migration[7.0]
  def change
    create_table :cooks do |t|
      t.string :name
      t.string :price
      t.string :description
      t.integer :inventory

      t.timestamps
    end
  end
end
