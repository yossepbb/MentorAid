class ChangeRatingToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :bookings, :rating, 'integer USING CAST(rating AS integer)', default: 0
  end
end
