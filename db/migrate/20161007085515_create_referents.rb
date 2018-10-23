class CreateReferents < ActiveRecord::Migration[5.2]
  def change
    create_table :referents do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.references :proposal, foreign_key: true

      t.timestamps
    end
  end
end
