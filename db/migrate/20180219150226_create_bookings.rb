class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :rating
      t.string :review
      t.text :happenned_at
      t.references :user_skill, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
