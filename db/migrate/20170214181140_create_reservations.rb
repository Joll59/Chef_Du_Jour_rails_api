class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :dining_experience_id
      t.integer :user_id
      t.string :date
      t.string :status, default: "available"

      t.timestamps
    end
  end
end
