class Teacher < ApplicationRecord
  validates :name, presence: true

  has_many :courses, dependent: :destroy

  has_many :relations, dependent: :destroy
  has_many :students, through: :relations
end
