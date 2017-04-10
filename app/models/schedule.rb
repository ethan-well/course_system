class Schedule < ApplicationRecord
  validates :student_id, presence: true
  validates :course_id, presence: true
  belongs_to :student
  belongs_to :course
end
