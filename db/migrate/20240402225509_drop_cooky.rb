class DropCooky < ActiveRecord::Migration[7.0]
  def change
    drop_table :cookies
  end
end
