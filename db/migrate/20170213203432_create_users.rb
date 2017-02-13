class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :profile_pic_url
      t.integer :average_user_rating
      t.string :password_digest

      t.timestamps
    end
  end
end
