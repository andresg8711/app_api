class CreateHabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :habilities do |t|
      t.string :skill
      t.integer :std
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
