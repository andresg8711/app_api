class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :nombre
      t.boolean :std

      t.timestamps
    end
  end
end
