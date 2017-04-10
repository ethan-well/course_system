class Student < ApplicationRecord
  validates :name, presence: true

  has_many :schedules, dependent: :destroy
  has_many :courses, through: :schedules

  has_many :relations, dependent: :destroy
  has_many :teachers, through: :relations
end
