class ChangeColumnType < ActiveRecord::Migration[5.2]
  def change
    change_column :proposals, :description, :text
  end
end
