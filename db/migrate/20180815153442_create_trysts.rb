class CreateTrysts < ActiveRecord::Migration[5.2]
  def change
    create_table :trysts do |t|
      t.timestamp :initialdate
      t.datetime :finaldate
      t.integer :std
      t.references :user, foreign_key: true
      t.references :tutorship, foreign_key: true

      t.timestamps
    end
  end
end
