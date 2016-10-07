class AddColumnToProposal < ActiveRecord::Migration[5.0]
  def change
    add_column :proposals, :privacy, :boolean
    add_column :proposals, :attachments, :boolean
    add_column :proposals, :answer1, :text
    add_column :proposals, :answer2, :text
    add_column :proposals, :team_name, :string
  end
end
