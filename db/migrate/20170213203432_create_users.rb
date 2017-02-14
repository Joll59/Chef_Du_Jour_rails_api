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
      t.text :chef_biography
      t.string :instagram
      t.string :personal_website
      t.string :password_digest

      t.timestamps
    end
  end
end
