class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.belongs_to :teacher, index: true
      t.timestamps
    end
  end
end
