class Booking < ApplicationRecord
  belongs_to :user_skill
  belongs_to :user

  validates :review, presence: true, on: :update
  validates :rating, presence: true, on: :update
end
