class AddFileTmpToProposal < ActiveRecord::Migration[5.0]
  def change
    add_column :proposals, :file_tmp, :string
  end
end
