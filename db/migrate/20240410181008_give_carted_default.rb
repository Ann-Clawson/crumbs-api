class GiveCartedDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :carted_cooks, :status, from: nil, to: "carted"
  end
end
