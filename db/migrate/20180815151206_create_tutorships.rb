class CreateTutorships < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorships do |t|
      t.integer :std
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
