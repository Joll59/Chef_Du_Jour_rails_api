class CreateDiningExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :dining_experiences do |t|
      t.text :description
      t.integer :price
      t.time :length

      t.timestamps
    end
  end
end
