class ChangeNameToStringInCourses < ActiveRecord::Migration[5.2]
    def change
        change_column :courses, :name, :string
    end
end
