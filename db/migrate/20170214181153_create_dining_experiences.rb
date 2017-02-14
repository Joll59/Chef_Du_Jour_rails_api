class CreateDiningExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :dining_experiences do |t|
      t.text :description
      t.integer :price
      t.integer :length
      t.integer :user_id

      t.timestamps
    end
  end
end
