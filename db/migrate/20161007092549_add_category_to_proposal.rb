class AddCategoryToProposal < ActiveRecord::Migration[5.0]
  def change
    add_reference :proposals, :category, foreign_key: true
  end
end
