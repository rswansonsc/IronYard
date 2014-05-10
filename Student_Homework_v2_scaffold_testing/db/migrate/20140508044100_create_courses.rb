class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name_course
      t.string :description_course
      t.string :links_course

      t.timestamps
    end
  end
end
