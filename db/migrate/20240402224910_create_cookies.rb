class CreateCookies < ActiveRecord::Migration[7.0]
  def change
    create_table :cookies do |t|
      t.string :name
      t.string :price
      t.string :decription
      t.integer :inventory

      t.timestamps
    end
  end
end
