class Relation < ApplicationRecord
  validates :student_id, presence: true
  validates :teacher_id, presence: true
  belongs_to :student
  belongs_to :teacher
end
