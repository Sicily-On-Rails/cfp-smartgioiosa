class AddFileToProposal < ActiveRecord::Migration[5.0]
  def change
    add_column :proposals, :file, :string
  end
end
