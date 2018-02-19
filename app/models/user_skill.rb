class UserSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  has_many :bookings
  validates :user, uniqueness: {scope: :skill}

end
