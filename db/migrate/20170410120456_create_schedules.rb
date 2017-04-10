class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.belongs_to :student, index: true
      t.belongs_to :course, index: true
      t.timestamps
    end
  end
end
