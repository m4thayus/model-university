class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :year
      t.string :major

      t.timestamps
    end
  end
end
