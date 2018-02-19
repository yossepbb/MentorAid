class Booking < ApplicationRecord
  belongs_to :user_skill
  belongs_to :user
end
