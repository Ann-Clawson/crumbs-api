class FixDescriptionName < ActiveRecord::Migration[7.0]
  def change
    rename_column :cookies, :decription, :description
  end
end
