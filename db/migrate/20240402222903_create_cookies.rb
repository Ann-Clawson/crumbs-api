class CreateCookies < ActiveRecord::Migration[7.0]
  def change
    create_table :cookies do |t|
      t.string :name
      t.string :description
      t.integer :inventory
      t.string :price

      t.timestamps
    end
  end
end
