class ChangeColumnType < ActiveRecord::Migration[5.0]
  def change
    change_column :proposals, :description, :text
  end
end
