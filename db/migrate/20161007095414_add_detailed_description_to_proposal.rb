class AddDetailedDescriptionToProposal < ActiveRecord::Migration[5.2]
  def change
    add_column :proposals, :detailed_description, :text
  end
end
