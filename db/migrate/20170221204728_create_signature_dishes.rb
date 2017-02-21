class CreateSignatureDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :signature_dishes do |t|
      t.string :dish
      t.string :image_url
      t.integer :dining_experience_id
      t.timestamps
    end
  end
end
