class AddFileToProposal < ActiveRecord::Migration[5.2]
  def change
    add_column :proposals, :file, :string
  end
end
