class Course < ApplicationRecord
  validates :name, presence: true
  validates :teacher_id, presence: true
  has_many :schedules, dependent: :destroy
  has_many :students, through: :schedules
  belongs_to :teacher
end
