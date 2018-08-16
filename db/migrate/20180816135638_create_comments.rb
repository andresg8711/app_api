class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :commentary
      t.integer :calification
      t.boolean :std
      # t.references :user_coment, foreign_key: true
      # t.references :user_unicoment, foreign_key: true
      # t.references :city, foreign_key: true
      t.references :userc, index: true, foreign_key: {to_table: :users}
      t.references :userr, index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
