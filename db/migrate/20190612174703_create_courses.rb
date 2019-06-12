class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :name
      t.text :description
      t.string :time
      t.integer :professor_id

      t.timestamps
    end
  end
end
