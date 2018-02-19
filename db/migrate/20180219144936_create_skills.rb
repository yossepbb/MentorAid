class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.string :icon

      t.timestamps
    end
  end
end
