class Work < ApplicationRecord
  has_many :work_skills, dependent: :destroy
  has_many :skills, through: :work_skills

  accepts_nested_attributes_for :work_skills, allow_destroy: true
end
