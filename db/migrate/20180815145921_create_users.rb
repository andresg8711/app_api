class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :typedocument
      t.integer :document
      t.string :name
      t.string :lastname
      t.timestamp :birthday
      t.references :city, foreign_key: true
      t.string :email
      t.boolean :std
      t.string :password_digest

      t.timestamps
    end
  end
end
