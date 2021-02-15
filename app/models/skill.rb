class Skill < ApplicationRecord
  has_many :work_skills, dependent: :destroy
  has_many :works, through: :work_skills
end
